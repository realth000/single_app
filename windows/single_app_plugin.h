#ifndef FLUTTER_PLUGIN_SINGLE_APP_PLUGIN_H_
#define FLUTTER_PLUGIN_SINGLE_APP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace single_app {

class SingleAppPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  SingleAppPlugin();

  virtual ~SingleAppPlugin();

  // Disallow copy and assign.
  SingleAppPlugin(const SingleAppPlugin&) = delete;
  SingleAppPlugin& operator=(const SingleAppPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace single_app

#endif  // FLUTTER_PLUGIN_SINGLE_APP_PLUGIN_H_
