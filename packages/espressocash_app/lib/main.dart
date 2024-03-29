import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'config.dart';
import 'di.dart';
import 'features/accounts/services/account_service.dart';
import 'logging.dart';
import 'ui/splash_screen.dart';

Future<void> main() async {
  runApp(const SplashScreen());

  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  return sentryDsn.isNotEmpty
      ? SentryFlutter.init(
          (options) {
            options
              ..dsn = sentryDsn
              ..tracesSampleRate = 1.0;
          },
          appRunner: _start,
        )
      : _start();
}

Future<void> _init() async {
  await Firebase.initializeApp();

  await configureDependencies();

  Bloc.observer = Observer();

  setUpLogging();

  final sharedPreferences = sl<SharedPreferences>();
  final hasPassedFirstRun = sharedPreferences.getBool(_firstRunKey) ?? false;
  if (!hasPassedFirstRun) {
    await const FlutterSecureStorage().deleteAll();
  }
  await sharedPreferences.setBool(_firstRunKey, true);

  await sl<AccountService>().initialize();
}

Future<void> _start() async {
  await _init();

  final app = DevicePreview(
    enabled: const bool.fromEnvironment('DEVICE_PREVIEW', defaultValue: false),
    builder: (context) => ScreenUtilInit(
      designSize: const Size(428, 926),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      builder: (context, child) => const EspressoCashApp(),
    ),
  );

  runApp(app);
}

const _firstRunKey = 'hasPassedFirstRun';
