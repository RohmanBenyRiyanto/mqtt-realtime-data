import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/type/type_main.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../logic/main_cubit.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, TypeMain>(
      builder: (context, currentNavItem) {
        switch (currentNavItem) {
          case TypeMain.home:
            return const DashboardPage();
          case TypeMain.profile:
            return const ProfilePage();
        }
      },
    );
  }
}
