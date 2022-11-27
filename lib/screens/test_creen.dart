


import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/dashboard_prov.dart';
import '../controllers/menu_controller.dart';
import '../responsive.dart';

class TestScreen extends StatelessWidget {
  TestScreen();

  @override
  Widget build(BuildContext context) {
    var entity = Provider.of<MenuController>(
      context,
    );
    return Consumer<DashboardProv>(
      builder: (context, prov, child) {
        return SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                !Responsive.isMobile(context)
                    ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   Text('mobile')
                  ],
                )
                    : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('not mobile')
                  ],
                ),
                SizedBox(
                  height: Responsive.isMobile(context) ? 4.h : 1.h,
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
