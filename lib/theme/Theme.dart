import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lara/theme/Sizes.dart';
import 'package:lara/theme/TextStyles.dart';

import 'Colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
      textTheme: TextTheme(
        labelMedium: TextStyles.primary(16),
        labelSmall: TextStyles.primary(14),
        titleLarge: TextStyles.primary(16),
        titleMedium: TextStyles.primary(14),
        titleSmall: TextStyles.secondary(14),
        headlineSmall: TextStyles.primaryBold(20),
        headlineMedium: TextStyles.userName(24),
        bodySmall: TextStyles.secondary(14)
      ), 
    
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
              fixedSize: const Size(Sizes.subscriptionButtonWidth, Sizes.subscriptionButtonHeight),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.mediumRadius),
              )
          ),
      ),
      dividerTheme: const DividerThemeData(
        thickness: Sizes.dividerThickness,
      ),
      appBarTheme: const AppBarTheme(
          surfaceTintColor: AppColor.primary,
          iconTheme: IconThemeData(color: AppColor.icon)
      ),
      tabBarTheme: TabBarTheme(
          labelStyle: TextStyles.primary(Sizes.regular),
          unselectedLabelStyle: TextStyles.secondary(Sizes.regular),
          labelColor: AppColor.primaryText,
          indicator: const BoxDecoration(
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