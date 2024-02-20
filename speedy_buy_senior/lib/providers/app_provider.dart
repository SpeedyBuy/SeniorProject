import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/models/app_model.dart';
import 'package:speedy_buy_senior/services/app_service.dart';

class AppProvider with ChangeNotifier {
  AppService _appService = AppService();
  AppModel appModel = AppModel();
  Future<void> getAppInfo() async {
    appModel = await _appService.getAppInfo();
    notifyListeners();
  }
}
