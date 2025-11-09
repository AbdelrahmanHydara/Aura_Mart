import 'package:flutter/material.dart';

abstract class ThemeState {}

class ThemeInitial extends ThemeState {
  final ThemeData themeData;
  ThemeInitial(this.themeData);
}
