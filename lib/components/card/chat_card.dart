import 'package:flutter/material.dart';

import '../../core/theme/app_dimens.dart';
import '../../utils/helpers/helpers.dart';
import '../../utils/helpers/text_helper.dart';
import '../../utils/helpers/time_converter.dart';

class ChatCard extends StatelessWidget {
  final String? message;
  final DateTime? timestamp;
  final bool? isMe;

  const ChatCard({
    this.message,
    this.timestamp,
    this.isMe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          (isMe == true) ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.6,
            minWidth: 0.0,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: AppDimens.s12,
            horizontal: AppDimens.s16,
          ),
          decoration: BoxDecoration(
            color: (isMe == true) ? ColorHelper.primary : ColorHelper.secondary,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(AppDimens.s14),
              topRight: const Radius.circular(AppDimens.s14),
              bottomLeft: Radius.circular(isMe == true ? AppDimens.s14 : 0.0),
              bottomRight: Radius.circular(isMe == true ? 0.0 : AppDimens.s14),
            ),
          ),
          child: Column(
            crossAxisAlignment: (isMe == true)
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Text(
                message ?? '',
                style: TextHelper.bodyMedium.copyWith(
                  color: (isMe == true)
                      ? ColorHelper.onPrimary
                      : ColorHelper.onSecondary,
                ),
              ),
              const SizedBox(height: AppDimens.s8),
              Text(
                formatOne(timestamp),
                style: TextHelper.labelSmall.copyWith(
                  fontSize: 10.0,
                  color: (isMe == true)
                      ? ColorHelper.onPrimary
                      : ColorHelper.onSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
