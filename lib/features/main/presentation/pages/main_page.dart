import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/helpers/color_helper.dart';
import '../../../../utils/helpers/text_helper.dart';
import '../../../../utils/injection/injection.dart';
import '../../../../utils/type/type_main.dart';
import '../logic/main_cubit.dart';
import '../widgets/main_body.dart';
import '../widgets/main_bottom_item.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainCubit = getIt<MainCubit>();

    return BlocProvider(
      create: (context) => mainCubit,
      child: Scaffold(
        backgroundColor: ColorHelper.background,
        body: const MainBody(),
        bottomNavigationBar: BlocBuilder<MainCubit, TypeMain>(
          builder: (context, currentNavItem) {
            return Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                elevation: 8,
                backgroundColor: ColorHelper.surfaceContainer,
                currentIndex: currentNavItem.index,
                onTap: (index) {
                  final item = TypeMain.values[index];
                  context.read<MainCubit>().setBottomNavBarItem(item);
                },
                type: BottomNavigationBarType.fixed,
                selectedItemColor: ColorHelper.primary,
                unselectedItemColor: ColorHelper.onSurfaceVariant,
                showUnselectedLabels: true,
                showSelectedLabels: true,
                selectedLabelStyle: TextHelper.labelMedium,
                unselectedLabelStyle: TextHelper.labelMedium,
                items: mainBottomItems(),
              ),
            );
          },
        ),
      ),
    );
  }
}
