import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class DashboardProv extends ChangeNotifier {
  late BuildContext ctx;
  bool connectionFailed = false;
  int countOrders = 0;
  int countBookings = 0;
  bool isLoading = true;

  List<Widget> togglePage = [];
  DashboardProv(BuildContext context) {
    ctx = context;

    print('------------------------------------');
    // fetchOrders();
    // fetchBookings();

  }
  final List<bool> selectedTabs = <bool>[true, false];
  int toggleIndex = 0;
  get page => togglePage[toggleIndex];

  get selectedTab => selectedTabs;
  void setPageIndex(int index) {
    toggleIndex = index;

    for (int i = 0; i < selectedTabs.length; i++) {
      selectedTabs[i] = i == index;
    }
    notifyListeners();
  }




}
