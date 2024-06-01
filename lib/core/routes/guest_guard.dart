import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/injection/injection.dart';
import 'package:code_test/core/utils/session/i_session_manager.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';

@injectable
class GuestGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isAuthenticated = await getIt<ISessionManager>().isAuthenticated;

    if (isAuthenticated) {
      return resolver.next();
    } else {
      await EasyLoading.showInfo('Please login to access this feature');
      // router.pushAndPopUntil(const LoginPageRoute(), predicate: (_) => false);
    }
  }
}
