import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/menu_controller.dart';
import '../responsive.dart';
import 'header.dart';


class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MenuController>(context);
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Header(),
            Divider(),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: prov.page,
                ),
                if (!Responsive.isMobile(context)) SizedBox(width: 16),
                // On Mobile means if the screen is less than 850 we dont want to show it
              ],
            )
          ],
        ),
      ),
    );
  }
}
