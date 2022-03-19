// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Globals with ChangeNotifier {
  bool _isLoading = false;
  bool _sidebarOpened = true;
  bool _hasInternet = false;
  String _loaderMessage = "loading...";
  dynamic _value;

  
  String get getLoaderMessage => _loaderMessage;
  bool get getLoading => _isLoading;
  bool get getsidebarOpened => _sidebarOpened;
  bool get getInternet => _hasInternet;
  dynamic get getValue => _value;


  setLoaderMessage(String load) {
    _loaderMessage = load;
    notifyListeners();
  }

  setInternet(bool load) {
    //print("____ setting internet");
    _hasInternet = load;
    notifyListeners();
  }

  setLoading(bool load) {
    _isLoading = load;
    notifyListeners();
  }

  setSidebarOpened(bool opened) {
    _sidebarOpened = opened;
    notifyListeners();
  }
}
