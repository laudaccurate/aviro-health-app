// @dart=2.9
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utilities {
  static String formatAmounts(dynamic amt) {
    String formattedAmt;
    final formatter = new NumberFormat("#,##0.00", "en_US");
    // final formatter = new NumberFormat.simpleCurrency();

    if (amt == null || amt.isEmpty || amt == '0') {
      amt = "0,000.00";
      formattedAmt = amt;
    } else {
      double amtDouble = double.parse(amt);
      formattedAmt = formatter.format(amtDouble);
    }

    return formattedAmt;
  }

  static String dateFormat(DateTime date) {
    return DateFormat("d-MMM-yyyy").format(date);
    // return DateFormat.d().add_yMMM().format(date);
  }

  static String graphdateFormat(DateTime date) {
    return DateFormat("d/M/yy").format(date);
    // return DateFormat.d().add_yMMM().format(date);
  }

  static Color getColor(String type) {
    switch (type) {
      case "A":
        return Colors.green;
        break;
      case "B":
        return Colors.red;
        break;
      case "C":
        return Colors.yellow[800];
        break;
      default:
        return Colors.purpleAccent;
    }
  }

  static List<Color> getGradientColor(String type) {
    switch (type) {
      case "A":
        return [Colors.green[300], Colors.green];
        break;
      case "B":
        return [Colors.red[300], Colors.red];
        break;
      case "C":
        return [Colors.yellow[300], Colors.yellow];
        break;
      default:
        return [Colors.purpleAccent, Colors.purpleAccent[100]];
    }
  }
}