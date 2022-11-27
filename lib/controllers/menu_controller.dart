
import 'package:ai_models/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

import '../screens/test_creen.dart';


class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void closeDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.closeDrawer();
    }
  }

  int indexprov = 0;

  List<Widget> navPages = [
    TestScreen(),
    TestScreen(),
    TestScreen(),
    TestScreen(),
    // NotificationsPage(),
    // NewCustomersPage(),
    // RolesManagerPage(),
    // ResponsiveCourts(),
    // PromoCodesCourts(),
    // MembershipPage(),
    // LoyalityPointsPage(),
    // DiscountedRatesPage(),
    // SlotsPage()
    // SlotsPage(),
    // RewardsPage()
  ];

  get page => navPages[indexprov];

  bool isSelected(int index) {
    return indexprov == index;
  }

  void setIndex(int index) {
    indexprov = index;
    notifyListeners();
  }
}
