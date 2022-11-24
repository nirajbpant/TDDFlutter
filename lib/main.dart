import 'package:flutter/material.dart';

import 'config/navigation/config_route.dart';
import 'config/navigation/global_navigation_key.dart';
import 'injectable/injection.dart';
import 'screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const SplashScreen(),
      navigatorKey: GlobalNavigationKey().navigatorKey,
    );
  }
}
