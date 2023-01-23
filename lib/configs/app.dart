import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maiza_portifolio/configs/app_text_dimensions.dart';
import 'package:maiza_portifolio/configs/app_theme.dart';
import 'package:maiza_portifolio/configs/dimensions.dart';
import 'package:maiza_portifolio/configs/spacing.dart';
import 'package:maiza_portifolio/configs/user_interface.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  static init(BuildContext context) {
    UI.init(context);
    Dimensions.init();
    AppTheme.init(context);
    //UIProps.init();
    Spacing.init();
    AppTextDimensions.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
