package pl.refericon.gcore_flutter

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import pl.refericon.gcore_flutter.pigeon.GCoreFlutterHost

/** GcoreFlutterPlugin */
class GcoreFlutterPlugin: FlutterPlugin {
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    val context = flutterPluginBinding.applicationContext
    Messages.GCoreHost.setUp(flutterPluginBinding.binaryMessenger, GCoreFlutterHost(context))
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {}
}
