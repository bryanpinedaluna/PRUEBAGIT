import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
          //elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading:
                      Icon(menuOptions[index].icon, color: AppTheme.primary),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //builder: (context) => const ListviewScreen());
                    //Navigator.push(context, route);
                    Navigator.pushNamed(context, menuOptions[index].route);
                    //Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
