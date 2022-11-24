import 'package:flutter/material.dart';

import '../../screens/home/home_screen.dart';
import '../../screens/login/login_screen.dart';
import '../../screens/trailer_map/trailer_map_screen.dart';
import '../../screens/widgets/error_404_screen.dart';
import '../constants/nav_constants.dart';
import 'models/trailer_map_screen_arguments.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      // case valSplashScreen:
      //   return MaterialPageRoute(builder: (BuildContext context) {
      //     return const SplashScreen();
      //   });
      case valLoginScreen:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const LoginScreen();
        });

      case valHomeScreen:
        return MaterialPageRoute(
          builder: ((BuildContext context) => const HomePage()),
        );

      case valTrailerMapScreen:
        return MaterialPageRoute(
          builder: ((BuildContext context) => TrailerMapScreen(
                coordinates: arguments as TrailerCoordinates,
              )),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (error) {
        return const Error404Screen(
          errorText: 'Error 404',
        );
      },
    );
  }
}
