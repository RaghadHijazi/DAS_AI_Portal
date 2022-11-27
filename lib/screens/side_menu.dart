

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../responsive.dart';
import '../controllers/header_prov.dart';
import '../controllers/menu_controller.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var prov = Provider.of<MenuController>(context);
    // var headerProv = Provider.of<HeaderProv>(context);
    return Consumer<MenuController>(builder: (context, prov, child) => Drawer(
      child: ListView(
        children: [
          // DrawerHeader(
          //     child: Center(
          //         child: Text(
          //           'PadelMe',
          //           style: Theme.of(context).textTheme.headline6,
          //         ))),
          DrawerListTile(
            title: "Dashboard",
            icon: Icons.dashboard_outlined,
            press: () {
              // if (!prov.isSelected(0)) {
              //   context.read<MenuController>().closeDrawer();
              // }
              // prov.setIndex(0);
              // headerProv.setHeaderIndex(0);
            },
            index: 0,
          ),
          DrawerListTile(
            title: "Model 1",
            icon: Icons.dashboard_outlined,
            press: () {
              // if (!prov.isSelected(0)) {
              //   context.read<MenuController>().closeDrawer();
              // }
              // prov.setIndex(0);
              // headerProv.setHeaderIndex(0);
            },
            index: 1,
          ),
          DrawerListTile(
            title: "Model 2",
            icon: Icons.bookmarks_outlined,
            press: () {
              // if (!prov.isSelected(1)) {
              //   context.read<MenuController>().closeDrawer();
              // }
              // prov.setIndex(1);
              // headerProv.setHeaderIndex(1);
            },
            index: 2,
          ),
          DrawerListTile(
            title: "Model 3",
            icon: Icons.storefront,
            press: () {
              // if (!prov.isSelected(2)) {
              //   context.read<MenuController>().closeDrawer();
              // }
              // prov.setIndex(2);
              // headerProv.setHeaderIndex(2);
            },
            index: 3,
          ),

        ],
      ),
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
    required this.index,
    this.pressLong,
  }) : super(key: key);

  final String title;

  IconData icon;
  final VoidCallback press;
  final VoidCallback? pressLong;
  final int index;

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MenuController>(context);
    return ListTile(
      selectedTileColor: Colors.black45,
      selected: prov.isSelected(index),
      // onLongPress: pressLong,
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(icon),
      // iconColor: Colors.white54,
      title: Text(
        title,
        // style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
