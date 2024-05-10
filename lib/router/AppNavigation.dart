import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smk_duta_kencana/page/Article.dart';
import 'package:smk_duta_kencana/page/Home.dart';
import 'package:smk_duta_kencana/page/Location.dart';
import 'package:smk_duta_kencana/page/Login.dart';
import 'package:smk_duta_kencana/page/Mainpage.dart';
import 'package:smk_duta_kencana/page/Pendaftaran.dart';
import 'package:smk_duta_kencana/page/Register.dart';
import 'package:smk_duta_kencana/page/UserSetting.dart';
import 'package:smk_duta_kencana/router/RouteUtils.dart';

class AppNavigation {
  AppNavigation();
  static final _shellNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorArticle =
      GlobalKey<NavigatorState>(debugLabel: 'shellArticle');
  static final _shellNavigatorLocation =
      GlobalKey<NavigatorState>(debugLabel: 'shellLocation');
  static final _shellNavigatorUserSetting =
      GlobalKey<NavigatorState>(debugLabel: 'shellUserSetting');



  List<RouteBase> routers = [
    // MainWrapper
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Mainpage(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        /// Brach Home
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHome,
          routes: <RouteBase>[
            GoRoute(
              path: APP_PAGE.home.toPath,
              name: APP_PAGE.home.toName,
              builder: (BuildContext context, GoRouterState state) => Home(),
            ),
          ],
        ),

        /// Brach Setting
        StatefulShellBranch(
          navigatorKey: _shellNavigatorArticle,
          routes: <RouteBase>[
            GoRoute(
              path: APP_PAGE.article.toPath,
              name: APP_PAGE.article.toName,
              builder: (BuildContext context, GoRouterState state) =>
                  const Article(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorLocation,
          routes: <RouteBase>[
            GoRoute(
              path: APP_PAGE.location.toPath,
              name: APP_PAGE.location.name,
              builder: (BuildContext context, GoRouterState state) =>
                  Location(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorUserSetting,
          routes: <RouteBase>[
            GoRoute(
              path: APP_PAGE.user.toPath,
              name: APP_PAGE.user.toName,
              builder: (BuildContext context, GoRouterState state) =>
                  UserSetting(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: APP_PAGE.login.toPath,
      name: APP_PAGE.login.toName,
      builder: (context, state) => Login(),
    ),
    GoRoute(
      path: APP_PAGE.register.toPath,
      name: APP_PAGE.register.toName,
      builder: (context, state) => Register(),
    ),
    GoRoute(
      path: APP_PAGE.ppdb.toPath,
      name: APP_PAGE.ppdb.toName,
      builder: (context, state) => Pendaftaran(),
    ),
  ];
}
