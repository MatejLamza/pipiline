import UIKit
import Flutter
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    AppCenter.start(withAppSecret: "0df79d87-755c-48b7-9174-835735803f62", services:[
      Analytics.self,
      Crashes.self
    ])
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
