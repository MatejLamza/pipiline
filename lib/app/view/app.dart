import 'package:appcenter_sdk_flutter/appcenter_sdk_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pipeline/counter/counter.dart';
import 'package:pipeline/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }

  Future<void> initAppCenter() async {
    final ios = defaultTargetPlatform == TargetPlatform.iOS;
    final appSecret = ios
        ? "123cfac9-123b-123a-123f-123273416a48"
        : "96781fae-f8e4-4114-98c3-51e7c52c8d53";

    await AppCenter.start(secret: appSecret);
  }
}
