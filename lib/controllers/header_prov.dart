
import 'package:flutter/material.dart';

class HeaderProv extends ChangeNotifier {
  int headerIndex = 0;

  List<String> navHeader = [
    'Dashboard',
    'Model 1',
    'Model 2',
    'Model 3',
    // 'Notifications',
    // 'Customers',
    // 'Roles Manager',
    // 'Courts',
    // 'Promo Codes',
    // 'Membership',
    // 'Loyalty Points',
    // 'Discounted Rates',
    // 'Slots',
    // 'Rewards'
  ];
  get header => navHeader[headerIndex];
  void setHeaderIndex(int index) {
    headerIndex = index;
    notifyListeners();
  }
}
