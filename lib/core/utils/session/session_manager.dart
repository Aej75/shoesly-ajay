import 'dart:convert';

import 'package:code_test/core/utils/model/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../miscellaneous/super_keys.dart';
import 'i_session_manager.dart';

@Injectable(as: ISessionManager)
class SessionManager implements ISessionManager {
  final FlutterSecureStorage _secureStorage;

  SessionManager(this._secureStorage);

  @override
  Future<String?> getToken() {
    try {
      return _secureStorage.read(key: SuperKeys.tokenKey);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> saveToken({required String accessToken}) async {
    try {
      await _secureStorage.write(key: SuperKeys.tokenKey, value: accessToken);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<bool> get isAuthenticated async {
    try {
      final token = await getToken();
      if (token != null) {
        return !Jwt.isExpired(token);
      }
      return false;
    } on Exception {
      return false;
    }
  }

  @override
  Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    // final facebook = FacebookAuth.i;
    // final google = GoogleSignIn();
    try {
      await _secureStorage.delete(key: SuperKeys.userKey);
      await _secureStorage.delete(key: SuperKeys.tokenKey);
      final savedEmail = prefs.getString('email');
      await prefs.clear();
      await prefs.setString('email', savedEmail ?? "");
      await prefs.setBool(SuperKeys.isAppFistTime, false);
      // await facebook.logOut();

      // await google.signOut();
      debugPrint('session cleared successfully!!');
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> saveCurrentUser({UserModel? user}) async {
    try {
      await _secureStorage.write(
          key: SuperKeys.userKey, value: json.encode(user));
      debugPrint('User ${user?.fullName} saved in local storage.');
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final stringUser = await _secureStorage.read(key: SuperKeys.userKey);
      if (stringUser != null) {
        final user =
            UserModel.fromJson(json.decode(stringUser) as Map<String, dynamic>);
        debugPrint('User ${user.fullName} reading from local storage.');
        return Future.value(user);
      }
      return null;
    } on Exception {
      await _secureStorage.delete(key: SuperKeys.userKey);
      rethrow;
    }
  }

  @override
  Future<void> saveWishlistProduct(
      {required String productId, required bool isWishlist}) async {
    final box = await Hive.openBox<bool>(SuperKeys.wishlistBox);
    await box.put(productId, isWishlist);
  }

  @override
  Future<bool> guestStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.getBool(
      SuperKeys.isGuest,
    );

    if (result == null || result == false) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<void> isGuest({required bool isGuest}) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(SuperKeys.isGuest, isGuest);
  }
}
