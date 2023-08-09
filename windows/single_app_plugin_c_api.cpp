#include "include/single_app/single_app_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "single_app_plugin.h"

void SingleAppPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  single_app::SingleAppPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
