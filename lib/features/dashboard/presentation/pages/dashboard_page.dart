import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../components/card/chat_tile_card.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../utils/helpers/helpers.dart';
import '../widgets/app_bar_home.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.defaultMargin,
          vertical: AppDimens.s24,
        ),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          thickness: 1,
          color: ColorHelper.outline,
        ),
        itemCount: 1,
        itemBuilder: (context, index) {
          return const ChatTileCard();
        },
      ),
    );
  }
}
