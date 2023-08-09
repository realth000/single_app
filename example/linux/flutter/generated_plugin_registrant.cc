//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <single_app/single_app_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) single_app_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SingleAppPlugin");
  single_app_plugin_register_with_registrar(single_app_registrar);
}
