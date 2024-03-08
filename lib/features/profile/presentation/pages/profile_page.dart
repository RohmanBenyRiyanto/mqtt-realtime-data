import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/logic/theme_cubit.dart';
import '../../../../utils/helpers/helpers.dart';
import '../../../../utils/helpers/text_helper.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.surface,
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Profile Page',
              style: TextHelper.headlineLarge.copyWith(),
            ),
            Switch(
              value: context
                  .watch<ThemeCubit>()
                  .state
                  .when(light: () => false, dark: () => true),
              onChanged: (value) {
                context.read<ThemeCubit>().toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}
