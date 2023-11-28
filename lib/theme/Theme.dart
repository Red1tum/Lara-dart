import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/theme/TextStyles.dart';

import 'Colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
      chipTheme: ChipThemeData(
          labelStyle: TextStyles.primary(Sizes.small),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.circledRectRadius),
              side: const BorderSide(color: Colors.transparent)
          ),
          backgroundColor: AppColor.chipBackground,
          selectedColor: AppColor.chipSelected,
          showCheckmark: false
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 4,
              foregroundColor: AppColor.hoverOnPrimary,
              surfaceTintColor: AppColor.primary,
              fixedSize: Size(Sizes.subscriptionButtonWidth, Sizes.subscriptionButtonHeight),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.mediumRadius),
              )
          ),
      ),
      dividerTheme: DividerThemeData(
        thickness: Sizes.dividerThickness,
      ),
      appBarTheme: AppBarTheme(
          surfaceTintColor: AppColor.primary,
          iconTheme: IconThemeData(color: AppColor.icon)
      ),
      tabBarTheme: TabBarTheme(
          labelStyle: TextStyles.primary(Sizes.regular),
          unselectedLabelStyle: TextStyles.secondary(Sizes.regular),
          labelColor: AppColor.primaryText,
          indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: AppColor.tabIndicator,
                    width: 2.0,
                  )
              )
          )
      ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
    ),
    useMaterial3: true,
  );
  
  static bool isDarkMode() {
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark;
  }
}