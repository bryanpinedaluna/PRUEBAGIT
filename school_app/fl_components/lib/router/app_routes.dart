import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home

    MenuOption(
      route: 'card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'listview1',
      screen: const Listview1Screen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRuotes = {};
    for (var option in menuOptions) {
      appRuotes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRuotes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}
