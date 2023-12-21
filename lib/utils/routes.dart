import 'package:first_star_energy/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../screens/services/entergy/entergy_screen.dart';
import '../widgets/bottom_nav.dart';

class AppRoutes {
  static const String login = '/';
  static const String bottomNavBar = '/bottomNavBar';
  static const String entergy = '/entergy';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case bottomNavBar:
        return MaterialPageRoute(builder: (_) => BottomnavBar());
      case entergy:
        final String title = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => EntergyScreen(
                  title: title ?? '',
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
