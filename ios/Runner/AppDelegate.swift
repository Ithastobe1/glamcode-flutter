import UIKit
import Flutter
import GoogleMaps
import flutter_local_notifications


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
     GMSServices.provideAPIKey("AIzaSyD9hZsKyj6zbXdOJN0ZEOKfj3dXNPyvfDU")
     if #available(iOS 10.0, *) {
       UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
     }
     FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
         GeneratedPluginRegistrant.register(with: registry)
       }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
   @available(iOS 10.0, *)
        override func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            completionHandler([.alert,.sound,.badge])
        }
}
