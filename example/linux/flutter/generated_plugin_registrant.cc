//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <animated_texture/animated_texture_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) animated_texture_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AnimatedTexturePlugin");
  animated_texture_plugin_register_with_registrar(animated_texture_registrar);
}
