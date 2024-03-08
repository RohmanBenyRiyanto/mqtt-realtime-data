import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/routing/app_router.gr.dart';
import '../../core/routing/routing.dart';
import '../../core/theme/app_dimens.dart';
import '../../generate/gen/assets.gen.dart';
import '../../utils/helpers/helpers.dart';
import '../../utils/helpers/text_helper.dart';

class ChatTileCard extends StatelessWidget {
  const ChatTileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navKey.currentContext?.router.push(
          MessageDetailRoute(name: 'John Doe'),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimens.s16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorHelper.onBackground,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Assets.images.avUserOne.image(
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppDimens.s16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: TextHelper.bodyMedium.copyWith(
                            color: ColorHelper.onSurface,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: AppDimens.s4),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: TextHelper.bodySmall.copyWith(
                            color: ColorHelper.onSurfaceVariant,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppDimens.s16),
            Text(
              "12:00",
              style: TextHelper.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
