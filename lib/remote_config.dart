// import 'package:firebase_remote_config/firebase_remote_config.dart';

// class RemoteConfigService {
//   static var remoteConfig = FirebaseRemoteConfig.instance;;

//   static Future<void> initialize() async {

//     await remoteConfig.setDefaults(<String, dynamic>{
//       'app_version': '1.0.0', // Default app version
//     });

//     try {
//       await remoteConfig.fetch(expiration: const Duration(hours: 1));
//       await remoteConfig.activateFetched();
//     } catch (e) {
//       print('Error fetching remote config: $e');
//     }
//   }

//   static String getAppVersion() {
//     return remoteConfig.getString('app_version');
//   }
// }