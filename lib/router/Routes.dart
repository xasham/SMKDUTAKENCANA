import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smk_duta_kencana/router/AppNavigation.dart';
import 'package:smk_duta_kencana/router/RouteUtils.dart';
import 'package:smk_duta_kencana/services/AuthController.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class Routes extends StatelessWidget {
  final AuthController authC = AuthController();
  AppNavigation appNavigation = AppNavigation();

  // final AppNavigation ap = AppNavigation();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authC.streamAuthStatus,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              // initialRoute: snapshot.data == null ? APP_PAGE.login.toPath : APP_PAGE.home.toPath,
              routerConfig: GoRouter(
                  debugLogDiagnostics: true,
                  routes: appNavigation.routers,
                  initialLocation: snapshot.data != null
                      ? APP_PAGE.home.toPath
                      : APP_PAGE.login.toPath),
            );
          } else {
            return MaterialApp(
              home: Scaffold(
                body: Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            );
          }
        });
  }

  
}
