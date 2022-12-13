import 'package:flutter/material.dart';
import 'package:flutter_local_notification_example/native_api/local_notification.dart';
import 'package:flutter_local_notification_example/screens/home_screen.dart';
import 'package:folivora_logger/folivora_logger.dart';
import 'package:go_router/go_router.dart';

import '../common/app_route.dart';
import 'splash_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late Future appInit;

  @override
  initState() {
    FvLogger.build("Start App Initialization");
    appInit = appInitialize(context: context);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: appInit,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SplashScreen();
            } else if (snapshot.hasError) {
              return Container();
            } else if (snapshot.hasData) {
              if (snapshot.data == true) {
                // GoRouter.of(context).goNamed(AppRoute.name.home);
                return const HomeScreen();
              }
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}

Future<bool> appInitialize({required BuildContext context}) async {
  LocalNotification.initialize();

  await Future.delayed(const Duration(milliseconds: 1000), () {});
  return true;
}
