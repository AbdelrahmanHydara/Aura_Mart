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
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        fontFamily: 'IBM Plex Sans',
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        fontFamily: 'IBM Plex Sans',
      ),
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
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          fontFamily: 'IBM Plex Sans',
          color: Colors.white
      ),
      unselectedLabelStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          fontFamily: 'IBM Plex Sans',
          color: Colors.white
      ),
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