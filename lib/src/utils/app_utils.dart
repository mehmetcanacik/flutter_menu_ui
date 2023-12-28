import 'package:flutter/material.dart';
import 'package:menu_dashboard_app/output/colors.gen.dart';
import 'package:menu_dashboard_app/output/fonts.gen.dart';

class AppUtils {
  static const String dashBoard = "DashBoard";
  static const String messages = "Messages";
  static const String utilityBills = "Utility Bills";
  static const String fundsTransfer = "Funds Transfer";
  static const String branches = "Branches";
  static const String myCards = "My Cards";

  static const menuTextStyle = TextStyle(
    fontFamily: MenuAppFont.montserrat,
    fontSize: 20.0,
    color: MenuAppColor.white,
    fontWeight: FontWeight.w500,
  );
    static const headerTextStyle = TextStyle(
    fontFamily: MenuAppFont.montserrat,
    fontSize: 26.0,
    color: MenuAppColor.white,
    fontWeight: FontWeight.w700,
  );
  static const containerGradient = LinearGradient(
  colors: <Color>[
    Color.fromARGB(255, 23, 60, 211),
    Color.fromARGB(255, 205, 16, 230),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [.3, .7],
);
}
