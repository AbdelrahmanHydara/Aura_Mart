import 'app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();

  // LIGHT THEME
  static final ThemeData light = ThemeData(
    extensions: const <ThemeExtension<AppColors>>[
      AppColors.light,
    ],
    useMaterial3: false,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(color: blackColor),
      iconTheme: IconThemeData(color: blackColor),
      actionsIconTheme: IconThemeData(color: blackColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: whiteColor,
        systemNavigationBarDividerColor: whiteColor,
        systemStatusBarContrastEnforced: false,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: whiteColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 10,
      backgroundColor: Colors.grey.shade300,
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      selectedIconTheme: IconThemeData(
        color: Colors.green.shade600,
        size: 22,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black54,
        size: 18,
      ),
      selectedItemColor: Colors.green.shade600,
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    ),
    // textTheme: GoogleFonts.montserratTextTheme(),
    primaryColor: whiteColor,
    scaffoldBackgroundColor: whiteColor,
  );

  // DARK THEME
  static final ThemeData dark = ThemeData(
    extensions:  const <ThemeExtension<AppColors>>[
      AppColors.dark,
    ],
    primaryTextTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
    canvasColor: blackColor,
    colorScheme: ColorScheme.fromSeed(seedColor: blackColor),
    bottomAppBarTheme: BottomAppBarThemeData(
      color: blackColor,
      surfaceTintColor: blackColor,
      shadowColor: whiteColor,
    ),
    bottomSheetTheme: const BottomSheetThemeData(surfaceTintColor: blackColor),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
    ),
    // textTheme: GoogleFonts.montserratTextTheme(),
    primaryColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFF262626),
    appBarTheme: const AppBarTheme(
      backgroundColor: blackColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: whiteColor,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: blackColor,
        systemNavigationBarDividerColor: blackColor,
        statusBarBrightness: Brightness.light,
        systemStatusBarContrastEnforced: false,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(color: whiteColor),
      surfaceTintColor: whiteColor,
    ),
  );
}