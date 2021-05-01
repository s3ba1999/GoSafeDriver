import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyBg3rjTI473PP-T5AdWYb0Exj_7mqsYuqM")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
