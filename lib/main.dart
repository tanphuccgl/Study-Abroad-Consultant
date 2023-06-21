import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:study_abroad_consultant/firebase_options.dart';
import 'package:study_abroad_consultant/network/domain_manager.dart';
import 'package:study_abroad_consultant/router/app_router.dart';
import 'package:study_abroad_consultant/router/coordinator.dart';
import 'package:study_abroad_consultant/router/router_name.dart';
import 'package:bot_toast/bot_toast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _locator();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await UserPrefs.instance.initialize();
  runApp(const MyApp());
}

void _locator() {
  GetIt.I.registerLazySingleton(() => DomainManager());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();

    return MaterialApp(
      navigatorKey: XCoordinator.navigatorKey,
      initialRoute: XRouterName.signIn,
      onGenerateRoute: XAppRoute.onGenerateRoute,
      builder: (context, child) {
        child = botToastBuilder(context, child);

        return child;
      },
      themeMode: ThemeMode.light,
      locale: null,
      supportedLocales: const [Locale('en', '')],
      debugShowCheckedModeBanner: false,
    );
  }
}
