import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../miscellaneous/super_keys.dart';
import 'i_app_manager.dart';

@Injectable(as: IAppManager)
class AppManager implements IAppManager {
  SharedPreferences sharedPreferences;

  AppManager(this.sharedPreferences);

  @override
  Future<bool> isFirstTime({required bool isFirst}) async {
    final prefs = await SharedPreferences.getInstance();

    if (kDebugMode) {
      print(prefs.setBool(SuperKeys.isAppFistTime, isFirst));
    }
    return prefs.setBool(SuperKeys.isAppFistTime, isFirst);
  }

  @override
  Future<void> saveBool({required String key, required bool value}) async {
    try {
      await sharedPreferences.setBool(SuperKeys.isAppFistTime, value);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String?> getDeviceIpAddress() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();

      return sharedPreferences.getString('currentIP');
    } on Exception {
      rethrow;
    }
  }

  @override
  bool getBool({required String key, bool defValue = false}) {
    try {
      final result = sharedPreferences.getBool(key);
      if (result != null) {
        return result;
      }

      return defValue;
    } on Exception {
      return defValue;
    }
  }

  @override
  Future<bool> isFirst() async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.getBool(
      SuperKeys.isAppFistTime,
    );
    if (kDebugMode) {
      print(result);
    }
    if (result == null || result == true) {
      return true;
    } else {
      return false;
    }
  }
}
