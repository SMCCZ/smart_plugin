//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <smart_plugin/smart_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) smart_plugin_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SmartPlugin");
  smart_plugin_register_with_registrar(smart_plugin_registrar);
}
