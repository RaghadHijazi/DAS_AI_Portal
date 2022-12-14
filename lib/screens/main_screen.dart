
import 'package:ai_models/screens/side_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/dashboard_prov.dart';
import '../controllers/menu_controller.dart';
import '../responsive.dart';
import 'dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // ChangeNotifierProvider<NotificationProv>(
          //   create: (context) => NotificationProv(context),
          //   lazy: false,
          // ),
          ChangeNotifierProvider<DashboardProv>(
            create: (context) => DashboardProv(context),
          )
        ],
        builder: (__, child) => Scaffold(
          key: context.read<MenuController>().scaffoldKey,
          drawer: SideMenu(),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // We want this side menu only for large screen
                if (Responsive.isDesktop(context))
                  Expanded(
                    // default flex = 1
                    // and it takes 1/6 part of the screen
                    child: SideMenu(),
                  ),
                Expanded(
                  // It takes 5/6 part of the screen
                  flex: 5,
                  child: DashboardScreen(),
                ),
              ],
            ),
          ),
        ));
  }
}
