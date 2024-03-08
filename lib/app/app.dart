import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../config/build_config.dart';
import '../core/routing/routing.dart';
import '../core/theme/logic/theme_cubit.dart';
import '../core/theme/theme.dart';
import '../utils/injection/injection.dart';
import 'app_mixin.dart';

class MyApp extends StatelessWidget with AppMixin {
  MyApp({super.key});

  final _appRouter = AppRouter(navigatorKey: navKey);
  final _themeCubit = getIt<ThemeCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _themeCubit,
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (BuildContext context, ThemeState state) {
          return MaterialApp.router(
            title: BuildConfig.isDebugLayout() ? "Beny Layout" : "Beny",
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            builder: builder(),
            locale: locale(context),
            theme: AppTheme.buildTheme(state),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
