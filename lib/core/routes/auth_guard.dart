import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/utils/bloc/fcm_bloc/presentation/bloc/fcm_bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../injection/injection.dart';
import '../utils/session/i_app_manager.dart';
import '../utils/session/i_session_manager.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  final ISessionManager _sessionManager;
  final IAppManager _appManager;

  final fcmBloc = getIt<FcmBloc>();

  AuthGuard(this._sessionManager, this._appManager);

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (kDebugMode) {
      print('token is = ${await _sessionManager.getToken()}');
    }
    if (await _appManager.isFirst()) {
      debugPrint('The app is running for the first time');

      // await router.push(const OnBoardingPageRoute()); //redirect to onboarding
    } else if (await _sessionManager.guestStatus()) {
      return resolver.next(true);
    } else if (await _sessionManager.isAuthenticated) {
      debugPrint('Session is authenticated');

      final user = await _sessionManager.getCurrentUser();

      if (user != null) {
        if (user.isVerified != null) {
          final isPhoneVerified = user.isVerified;
          if (isPhoneVerified == true) {
            return resolver.next(true);
          } else {
            // await router.push(
            //   RegistrationPageRoute(regular: false, activeStep: 1, user: user),
            // ); // redirect to registration page, continue from otp verification
          }
        } else {
          return resolver.next(true);
        }
      } else {
        await FirebaseMessaging.instance.getToken().then(
              (value) => fcmBloc.add(
                FcmEvent.deleteFcm(fcmToken: value.toString()),
              ),
            );
        // await router.push(const LoginPageRoute());
      }
    } else {
      await FirebaseMessaging.instance.getToken().then(
            (value) => fcmBloc.add(
              FcmEvent.deleteFcm(fcmToken: value.toString()),
            ),
          );
      await getIt<ISessionManager>().clearSession();
      // await router.push(const LoginPageRoute());
    }
  }
}
