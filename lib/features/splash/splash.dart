import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      gifPath: Assets.splash.path,
      gifWidth: 100,
      gifHeight: 100,
      useImmersiveMode: true,
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      duration: const Duration(milliseconds: 1700),
      onEnd: () async {
        context.router.pushAndPopUntil(
          DashboardPageRoute(),
          predicate: (route) => false,
        );
      },
    );
  }
}
