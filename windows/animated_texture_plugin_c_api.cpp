#include "include/animated_texture/animated_texture_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "animated_texture_plugin.h"

void AnimatedTexturePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  animated_texture::AnimatedTexturePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
