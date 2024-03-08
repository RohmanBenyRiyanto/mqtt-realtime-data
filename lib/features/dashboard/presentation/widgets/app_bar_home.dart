import 'package:flutter/material.dart';

import '../../../../core/network/connectivity/connectivity_service.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../utils/helpers/helpers.dart';
import '../../../../utils/helpers/text_helper.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorHelper.surface,
      elevation: 8,
      title: Text(
        'Message',
        style: TextHelper.headlineLarge.copyWith(color: ColorHelper.onSurface),
      ),
      actions: [
        StreamBuilder<bool>(
          stream: ConnectivityService.instance.connectionStream,
          initialData: false,
          builder: (context, snapshot) {
            final bool isConnected = snapshot.data ?? false;
            return Container(
              height: AppDimens.s10,
              width: AppDimens.s10,
              margin: const EdgeInsets.only(right: AppDimens.s16),
              decoration: BoxDecoration(
                color: isConnected ? Colors.green : Colors.red,
                shape: BoxShape.circle,
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
