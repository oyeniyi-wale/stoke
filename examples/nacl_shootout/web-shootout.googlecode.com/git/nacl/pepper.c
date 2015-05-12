// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/* Browser-specific stuff */

#include <errno.h>
#include <pthread.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "ppapi/c/pp_completion_callback.h"
#include "ppapi/c/pp_errors.h"
#include "ppapi/c/pp_module.h"
#include "ppapi/c/pp_var.h"
#include "ppapi/c/ppb.h"
#include "ppapi/c/ppb_core.h"
#include "ppapi/c/ppb_instance.h"
#include "ppapi/c/ppb_messaging.h"
#include "ppapi/c/ppb_var.h"
#include "ppapi/c/ppp.h"
#include "ppapi/c/ppp_instance.h"
#include "ppapi/c/ppp_messaging.h"

#include "bench-framework.h"

struct MessageInfo {
  PP_Instance instance;
  struct PP_Var message;
};

static const char* const kRunBenchmarksMethodId = "runBenchmarks";
static const char kMessageArgumentSeparator = ':';
static const char kNullTerminator = '\0';
static const int kMaxMessageSize = 512;

static PPB_Messaging* ppb_messaging_interface = NULL;
static PPB_Var* ppb_var_interface = NULL;
static PPB_Core* ppb_core_interface = NULL;
static PP_Module module_id = 0;

static PP_Instance my_instance;

void SendStringMessage(const char *format, ...);
void SendStringMessageOnMainThread(char *str);
void ReportStatus(const char *format, ...);
int fork_thread(enum benchmark_size_t);
pthread_mutex_t run_mutex = PTHREAD_MUTEX_INITIALIZER;

/**
 * Returns a mutable C string contained in the @a var or NULL if @a var is not
 * string.  This makes a copy of the string in the @ var and adds a NULL
 * terminator.  Note that VarToUtf8() does not guarantee the NULL terminator on
 * the returned string.  See the comments for VatToUtf8() in ppapi/c/ppb_var.h
 * for more info.  The caller is responsible for freeing the returned memory.
 * @param[in] var PP_Var containing string.
 * @return a C string representation of @a var.
 * @note The caller is responsible for freeing the returned string.
 */
static char* VarToCStr(struct PP_Var var) {
  uint32_t len = 0;
  if (ppb_var_interface != NULL) {
    const char* var_c_str = ppb_var_interface->VarToUtf8(var, &len);
    if (len > 0) {
      char* c_str = (char*)malloc(len + 1);
      memcpy(c_str, var_c_str, len);
      c_str[len] = kNullTerminator;
      return c_str;
    }
  }
  return NULL;
}

/**
 * Creates new string PP_Var from C string. The resulting object will be a
 * refcounted string object. It will be AddRef()ed for the caller. When the
 * caller is done with it, it should be Release()d.
 * @param[in] str C string to be converted to PP_Var
 * @return PP_Var containing string.
 */
static struct PP_Var CStrToVar(const char* str) {
  if (ppb_var_interface != NULL) {
    return ppb_var_interface->VarFromUtf8(str, strlen(str));
  }
  return PP_MakeUndefined();
}


/**
 * Called when the NaCl module is instantiated on the web page. The identifier
 * of the new instance will be passed in as the first argument (this value is
 * generated by the browser and is an opaque handle).  This is called for each
 * instantiation of the NaCl module, which is each time the <embed> tag for
 * this module is encountered.
 *
 * If this function reports a failure (by returning @a PP_FALSE), the NaCl
 * module will be deleted and DidDestroy will be called.
 * @param[in] instance The identifier of the new instance representing this
 *     NaCl module.
 * @param[in] argc The number of arguments contained in @a argn and @a argv.
 * @param[in] argn An array of argument names.  These argument names are
 *     supplied in the <embed> tag, for example:
 *       <embed id="nacl_module" dimensions="2">
 *     will produce two arguments, one named "id" and one named "dimensions".
 * @param[in] argv An array of argument values.  These are the values of the
 *     arguments listed in the <embed> tag.  In the above example, there will
 *     be two elements in this array, "nacl_module" and "2".  The indices of
 *     these values match the indices of the corresponding names in @a argn.
 * @return @a PP_TRUE on success.
 */
static PP_Bool Instance_DidCreate(PP_Instance instance,
                                  uint32_t argc,
                                  const char* argn[],
                                  const char* argv[]) {
  my_instance = instance;
  return PP_TRUE;
}

/**
 * Called when the NaCl module is destroyed. This will always be called,
 * even if DidCreate returned failure. This routine should deallocate any data
 * associated with the instance.
 * @param[in] instance The identifier of the instance representing this NaCl
 *     module.
 */
static void Instance_DidDestroy(PP_Instance instance) {
}

/**
 * Called when the position, the size, or the clip rect of the element in the
 * browser that corresponds to this NaCl module has changed.
 * @param[in] instance The identifier of the instance representing this NaCl
 *     module.
 * @param[in] position The location on the page of this NaCl module. This is
 *     relative to the top left corner of the viewport, which changes as the
 *     page is scrolled.
 * @param[in] clip The visible region of the NaCl module. This is relative to
 *     the top left of the plugin's coordinate system (not the page).  If the
 *     plugin is invisible, @a clip will be (0, 0, 0, 0).
 */
static void Instance_DidChangeView(PP_Instance instance,
                                   PP_Resource view) {
}

/**
 * Notification that the given NaCl module has gained or lost focus.
 * Having focus means that keyboard events will be sent to the NaCl module
 * represented by @a instance. A NaCl module's default condition is that it
 * will not have focus.
 *
 * Note: clicks on NaCl modules will give focus only if you handle the
 * click event. You signal if you handled it by returning @a true from
 * HandleInputEvent. Otherwise the browser will bubble the event and give
 * focus to the element on the page that actually did end up consuming it.
 * If you're not getting focus, check to make sure you're returning true from
 * the mouse click in HandleInputEvent.
 * @param[in] instance The identifier of the instance representing this NaCl
 *     module.
 * @param[in] has_focus Indicates whether this NaCl module gained or lost
 *     event focus.
 */
static void Instance_DidChangeFocus(PP_Instance instance,
                                    PP_Bool has_focus) {
}

/**
 * Handler that gets called after a full-frame module is instantiated based on
 * registered MIME types.  This function is not called on NaCl modules.  This
 * function is essentially a place-holder for the required function pointer in
 * the PPP_Instance structure.
 * @param[in] instance The identifier of the instance representing this NaCl
 *     module.
 * @param[in] url_loader A PP_Resource an open PPB_URLLoader instance.
 * @return PP_FALSE.
 */
static PP_Bool Instance_HandleDocumentLoad(PP_Instance instance,
                                           PP_Resource url_loader) {
  /* NaCl modules do not need to handle the document load function. */
  return PP_FALSE;
}

/**
 * Handler for messages coming in from the browser via postMessage.  Extracts
 * the method call from @a message, parses it for method name and value, then
 * calls the appropriate function.v
 * @param[in] instance The instance ID.
 * @param[in] message The contents, copied by value, of the message sent from
 *     browser via postMessage.
 */
void Messaging_HandleMessage(PP_Instance instance, struct PP_Var var_message) {
  if (var_message.type != PP_VARTYPE_STRING) {
    /* Only handle string messages */
    return;
  }
  char* message = VarToCStr(var_message);
  if (message == NULL)
    return;
 if (strncmp(message, 
             kRunBenchmarksMethodId,
             strlen(kRunBenchmarksMethodId)) == 0) {
    enum benchmark_size_t bench_size = kBenchmarkSmall;
    if (strncmp(message + strlen(kRunBenchmarksMethodId) + 1,
                "large",
                strlen("large")) == 0) {
      bench_size = kBenchmarkLarge;
    }
    /* Use SendStringMessageOnMainThread here instead of ReportResult
       to work around crash bug (we have to use CallOnMainThread from the
       main thread before using it on a background thread */
    SendStringMessageOnMainThread(strdup("Starting..."));
    fork_thread(bench_size);
  }
  free(message);
}

/**
 * Entry points for the module.
 * Initialize needed interfaces: PPB_Core, PPB_Messaging and PPB_Var.
 * @param[in] a_module_id module ID
 * @param[in] get_browser pointer to PPB_GetInterface
 * @return PP_OK on success, any other value on failure.
 */
PP_EXPORT int32_t PPP_InitializeModule(PP_Module a_module_id,
                                       PPB_GetInterface get_browser) {
  module_id = a_module_id;
  ppb_messaging_interface =
      (PPB_Messaging*)(get_browser(PPB_MESSAGING_INTERFACE));
  ppb_var_interface = (PPB_Var*)(get_browser(PPB_VAR_INTERFACE));
  ppb_core_interface = (PPB_Core*)(get_browser(PPB_CORE_INTERFACE));

  return PP_OK;
}

/**
 * Returns an interface pointer for the interface of the given name, or NULL
 * if the interface is not supported.
 * @param[in] interface_name name of the interface
 * @return pointer to the interface
 */
PP_EXPORT const void* PPP_GetInterface(const char* interface_name) {
  if (strcmp(interface_name, PPP_INSTANCE_INTERFACE) == 0) {
    static PPP_Instance instance_interface = {
      &Instance_DidCreate,
      &Instance_DidDestroy,
      &Instance_DidChangeView,
      &Instance_DidChangeFocus,
      &Instance_HandleDocumentLoad,
    };
    return &instance_interface;
  } else if (strcmp(interface_name, PPP_MESSAGING_INTERFACE) == 0) {
    static PPP_Messaging messaging_interface = {
      &Messaging_HandleMessage
    };
    return &messaging_interface;
  }
  return NULL;
}

/**
 * Called before the plugin module is unloaded.
 */
PP_EXPORT void PPP_ShutdownModule() {
}

void SendStringMessage(const char *format, ...) {
  va_list ap;
  char str[kMaxMessageSize];
  va_start(ap, format);
  vsnprintf(str, kMaxMessageSize, format, ap); 
  va_end(ap);
  struct PP_Var var_msg = CStrToVar(str);
  ppb_messaging_interface->PostMessage(my_instance, var_msg);
  ppb_var_interface->Release(var_msg);
}

void PPSendStringCallback(void *user_data, int result) {
  if (result < 0) printf("PPSSCB result %d\n", result);
  SendStringMessage(user_data);
  free(user_data);
}

/* Strings that pass from one thread to the other
   must be allocated with malloc and are freed by the callback*/
void SendStringMessageOnMainThread(char *str) {
  struct PP_CompletionCallback cb;
  cb = PP_MakeCompletionCallback(PPSendStringCallback, str);
  ppb_core_interface->CallOnMainThread(0, cb, 0);
}

typedef struct thread_info {
  enum benchmark_size_t bench_size;
} thread_info_t;

void *bench_thread(void *p) {
  if(pthread_mutex_trylock(&run_mutex) != 0) {
    ReportStatus("Benchmarks already running");
    return NULL;
  }
  thread_info_t *ti = (thread_info_t *)p;
  ReportStatus("Started %s benchmark thread...", 
               ti->bench_size == kBenchmarkSmall ? "small" : "large");

  int score = framework_main(ti->bench_size);
  ReportStatus("Score: %d", score);
  pthread_mutex_unlock(&run_mutex);
  // these threads never get joined, so free our thread info
  free(ti);
  return NULL;
}

int fork_thread(enum benchmark_size_t size) {
  pthread_t th;
  int er;
  thread_info_t *ti = malloc(sizeof(thread_info_t));
  ti->bench_size = size;
  if((er = pthread_create(&th, NULL, bench_thread, ti)) != 0) {
    ReportStatus("pthread_create failed! retval %d, %s", er, strerror(er));
    abort();
  }
  return 0;
}

void ReportStatus(const char *format, ...) {
  va_list ap;
  char *str = malloc(kMaxMessageSize);
  
  va_start(ap, format);
  //vprintf(format, ap);
  vsnprintf(str, kMaxMessageSize, format, ap);
  va_end(ap);
  if (!ppb_core_interface->IsMainThread()) {
    SendStringMessageOnMainThread(str);
  } else {
    SendStringMessage(str);
    free(str);
  }
}
