import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  bool? isEligible;
  String eligibilityMessage = "";
  void checkEligibity(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMessage = "You are  eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessage = "You are  not eligible";
      notifyListeners();
    }
  }
}
