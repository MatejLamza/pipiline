import 'package:flutter_appcenter_bundle/flutter_appcenter_bundle.dart';
import 'package:pipeline/app/app.dart';
import 'package:pipeline/bootstrap.dart';

void main() {
  appCenter();
  bootstrap(() => const App());
}

Future<void> appCenter() async {
  await AppCenter.startAsync(
    appSecretAndroid: '2b5e0277-046c-4dc7-9c98-ecdf6b3ed70a',
    //YOUR android APPSECRET CODE
    appSecretIOS: '0df79d87-755c-48b7-9174-835735803f62',
    //YOUR iOS APPSECRET CODE
    enableAnalytics: true,
    // Defaults to true
    enableCrashes: true,
    // Defaults to true
    enableDistribute: true,
    // Defaults to false
    usePrivateDistributeTrack: false,
    // Defaults to false
    disableAutomaticCheckForUpdate: false, // Defaults to false
  );

  await AppCenter.configureDistributeDebugAsync(enabled: false);
  await AppCenter.configureAnalyticsAsync(enabled: true);
  await AppCenter.configureCrashesAsync(enabled: true);
  await AppCenter.configureDistributeAsync(enabled: true);
  await AppCenter.configureDistributeDebugAsync(enabled: true);
  // Android Only
  await AppCenter.checkForUpdateAsync(); // Manually check for update
}
