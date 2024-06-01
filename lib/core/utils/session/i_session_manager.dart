import 'package:code_test/core/utils/model/user_model.dart';

abstract class ISessionManager {
  Future<void> saveToken({required String accessToken});

  Future<String?> getToken();

  Future<void> clearSession();

  Future<bool> get isAuthenticated;

  Future<void> saveCurrentUser({required UserModel user});

  Future<UserModel?> getCurrentUser();

  Future<void> isGuest({required bool isGuest});
  Future<bool> guestStatus();

  Future<void> saveWishlistProduct(
      {required String productId, required bool isWishlist});
}
