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
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(width: 0, color: Colors.transparent)
          ),
          backgroundColor: AppColor.chipBackground,
          selectedColor: AppColor.chipSelected,
          showCheckmark: false
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(216, 130),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )
          ),
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColor.icon)),
      tabBarTheme: TabBarTheme(
          labelStyle: TextStyles.primary(Sizes.regular),
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