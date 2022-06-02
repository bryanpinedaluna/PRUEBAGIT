import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    MenuOption(
        route: 'home',
        name: 'Inicio',
        screen: const HomeScreen(),
        icon: Icons.home,
        linkweb: 'https://www.codea.app/blog/cargar-url-flutter'),
    MenuOption(
        route: 'listview1',
        name: 'L1_Tramites',
        screen: const Listview1Screen(),
        icon: Icons.list,
        linkweb: 'https://www.codea.app/blog/cargar-url-flutter'),
    MenuOption(
        route: 'lisrview2',
        name: 'L2_Deportes',
        screen: const Listview2Screen(),
        icon: Icons.list_alt_rounded,
        linkweb: 'https://www.codea.app/blog/cargar-url-flutter'),
    MenuOption(
        route: 'alert',
        name: 'Alerts-Demo',
        screen: const AlertScreen(),
        icon: Icons.add_alert,
        linkweb: 'https://www.codea.app/blog/cargar-url-flutter'),
    MenuOption(
        route: 'card',
        name: 'Targetas-Demo',
        screen: const CardScreen(),
        icon: Icons.yard_rounded,
        linkweb: 'https://www.codea.app/blog/cargar-url-flutter'),
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
      builder: (context) => const AlertScreen(),
    );
  }
}
