import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/helpers/helpers.dart';
import '../../../../utils/type/type_main.dart';

List<BottomNavigationBarItem> mainBottomItems() {
  return List.generate(
    TypeMain.values.length,
    (idx) => BottomNavigationBarItem(
      icon: SvgPicture.asset(
        TypeMain.values[idx].icon(),
        colorFilter: ColorFilter.mode(
          ColorHelper.onSurfaceVariant,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        TypeMain.values[idx].icon(),
        colorFilter: ColorFilter.mode(
          ColorHelper.primary,
          BlendMode.srcIn,
        ),
      ),
      label: TypeMain.values[idx].label(),
    ),
  );
}
