import 'package:flutter/cupertino.dart';

import '../screens/completed/completed_screen.dart';
import '../screens/drafts/drafts_screen.dart';
import '../screens/services/services_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../utils/routes.dart';

class BottomnavBar extends StatelessWidget {
  const BottomnavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 60,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2_fill),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_pencil_fill),
            label: 'Drafts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_crop_circle_fill_badge_checkmark),
            label: 'Completed',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings_solid),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => ServicesScreen(),
              onGenerateRoute: (RouteSettings settings) {
                // You can handle additional routes here if needed
                return AppRoutes.generateRoute(settings);
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => DraftsScreen(),
              onGenerateRoute: (RouteSettings settings) {
                // You can handle additional routes here if needed
                return AppRoutes.generateRoute(settings);
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => CompletedScreen(),
              onGenerateRoute: (RouteSettings settings) {
                // You can handle additional routes here if needed
                return AppRoutes.generateRoute(settings);
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (BuildContext context) => SettingsScreen(),
              onGenerateRoute: (RouteSettings settings) {
                // You can handle additional routes here if needed
                return AppRoutes.generateRoute(settings);
              },
            );
          default:
            return CupertinoTabView(
              builder: (BuildContext context) => Container(), // Placeholder
            );
        }
      },
    );
  }
}
