import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let browserChannel = FlutterMethodChannel(name: "flutter.learning.com/browser", binaryMessenger: controller.binaryMessenger)
    browserChannel.setMethodCallHandler { [weak self] (call, result) in
        guard call.method == "openBrowser" else {
            result(FlutterMethodNotImplemented)
            return
        }
        if let arguments = call.arguments as? [String : Any], let urlString = arguments["url"] as? String {
            self?.openBrowser(urlString: urlString)
        }
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  func openBrowser(urlString: String) {
    guard let url = URL(string: urlString) else {
        return
    }
    UIApplication.shared.openURL(url)
  }
}
