import Flutter
import UIKit
import SwiftProtobuf

public class AudioRouterPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "audio_router", binaryMessenger: registrar.messenger())
        let instance = AudioRouterPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        case "test":
            handleTest(call: call, result: result)
            break;
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func handleTest(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? FlutterStandardTypedData,
              let testMessage = try? AudioRouter_Test(serializedData: args.data) else {
            result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments for 'test' method", details: nil))
            return
        }
        
        // Process the testMessage as needed
        // ...
        
        // For demonstration, let's just send back the received string and integer
        let response = "Received testS: \(testMessage.testS), testI: \(testMessage.testI)"
        result(response)
    }
}

