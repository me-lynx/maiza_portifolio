import 'package:flutter/material.dart';
import 'package:maiza_portifolio/configs/app_theme_core.dart';

class AppTheme {
  static final _core = AppThemeCore(
    shadowSub: const Color(0xffC0392B).withAlpha(100),
    primary: Color.fromARGB(255, 231, 89, 172),
    primaryLight: const Color(0xffC0392B).withAlpha(100),
    textSub: const Color(0xff141414),
    textSub2: const Color(0xff696969),
  );

  static AppThemeCore light = _core.copyWith(
    background: Colors.white,
    backgroundSub: const Color(0xffF0F0F0),
    scaffold: const Color(0xfffefefe),
    scaffoldDark: const Color(0xfffcfcfc),
    text: const Color(0xff484848),
    textSub2: Colors.black.withOpacity(0.25),
  );

  static AppThemeCore dark = _core.copyWith(
    background: Colors.grey[900],
    backgroundSub: const Color(0xff1c1c1e),
    scaffold: const Color(0xff0e0e0e),
    text: Colors.white,
    textSub2: Colors.white.withOpacity(0.25),
  );

  static AppThemeCore? c;

  // Init
  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
