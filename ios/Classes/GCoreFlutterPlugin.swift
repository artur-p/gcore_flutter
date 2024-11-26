import Flutter
import UIKit

public class SwiftInsyliumSecurityPlugin: NSObject, FlutterPlugin {
   public static func register(with registrar: FlutterPluginRegistrar) {
          let messenger : FlutterBinaryMessenger = registrar.messenger()
          SetUpBMLGCoreHost(messenger, DeviceChecksHost());
      }
}
