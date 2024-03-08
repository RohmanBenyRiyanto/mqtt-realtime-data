// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:mqtt_broker/features/dashboard/presentation/pages/dashboard_page.dart'
    as _i1;
import 'package:mqtt_broker/features/main/presentation/pages/main_page.dart'
    as _i2;
import 'package:mqtt_broker/features/message_detail/presentation/pages/message_detail_page.dart'
    as _i3;
import 'package:mqtt_broker/features/profile/presentation/pages/profile_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    MessageDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MessageDetailRouteArgs>(
          orElse: () => const MessageDetailRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MessageDetailPage(
          key: args.key,
          name: args.name,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MessageDetailPage]
class MessageDetailRoute extends _i5.PageRouteInfo<MessageDetailRouteArgs> {
  MessageDetailRoute({
    _i6.Key? key,
    String? name,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          MessageDetailRoute.name,
          args: MessageDetailRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'MessageDetailRoute';

  static const _i5.PageInfo<MessageDetailRouteArgs> page =
      _i5.PageInfo<MessageDetailRouteArgs>(name);
}

class MessageDetailRouteArgs {
  const MessageDetailRouteArgs({
    this.key,
    this.name,
  });

  final _i6.Key? key;

  final String? name;

  @override
  String toString() {
    return 'MessageDetailRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
