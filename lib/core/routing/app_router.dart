import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide TransitionRoute;

import 'app_router.gr.dart';
import 'transitions.dart';

final navKey = GlobalKey<NavigatorState>();
final snackKey = GlobalKey<ScaffoldMessengerState>();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter({super.navigatorKey});

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: DashboardRoute.page,
            ),
            AutoRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        TransitionRoute(page: MessageDetailRoute.page),
      ];
}
