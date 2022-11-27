import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/header_prov.dart';
import '../controllers/menu_controller.dart';
import '../responsive.dart';


class Header extends StatelessWidget {
  const Header(
      {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Consumer<HeaderProv>(builder: (__, headerProv, child) {
      return Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu,
            ),
          Text(
            headerProv.header.toString(),
            style: TextStyle(fontSize: !Responsive.isDesktop(context) ? 16 : 15),
          ),SizedBox(width: 1.w,),
          if (!Responsive.isMobile(context)) Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
          if (!Responsive.isDesktop(context)) Spacer(flex: Responsive.isMobile(context) ? 1 : 2),

        ],
      );
    },);
  }
}


