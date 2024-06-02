import 'package:auto_route/auto_route.dart';
import 'package:code_test/config/app_theme.dart';
import 'package:code_test/core/injection/injection.dart';
import 'package:code_test/core/routes/app_router.gr.dart';
import 'package:code_test/core/utils/notification/notification_service.dart';
import 'package:code_test/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';

final GlobalKey<ScaffoldMessengerState> snackbarMessanger =
    GlobalKey<ScaffoldMessengerState>();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await configureInjection();

  // await getIt<DataPopulation>().seed();

  runApp(
    BlocProvider(
      create: (context) => getIt<CartBloc>()..add(const CartEvent.getCart()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SizedBox(),
      builder: (context, extendedNav) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        return FlutterEasyLoading(
          child: ScreenUtilInit(
            designSize: const Size(360,
                690), // The [Size] of the device in the design draft, in dp
            builder: (_, child) => MaterialApp.router(
                scaffoldMessengerKey: snackbarMessanger,
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                themeMode: ThemeMode.light,
                routeInformationParser: _appRouter.defaultRouteParser(),
                routerDelegate: AutoRouterDelegate(_appRouter)),
          ),
        );
      },
    );
  }
}
