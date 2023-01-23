import 'package:flutter/material.dart';
import 'package:maiza_portifolio/configs/dimensions.dart';
import 'package:maiza_portifolio/configs/user_interface.dart';

class Spacing {
  static Widget? x;
  static Widget? y;
  static Widget? x1;
  static Widget? y1;
  static Widget? x2;
  static Widget? y2;
  static Widget? xm;
  static Widget? ym;

  static EdgeInsets? z;
  static EdgeInsets? h;
  static EdgeInsets? v;
  static EdgeInsets? h1;
  static EdgeInsets? v1;
  static EdgeInsets? h2;
  static EdgeInsets? v2;

  static Widget? top;
  static Widget? bottom;

  static void init() {
    x = SizedBox(width: Dimensions.space(0.5));
    y = SizedBox(height: Dimensions.space(0.5));

    x1 = SizedBox(width: Dimensions.space());
    y1 = SizedBox(height: Dimensions.space());

    x2 = SizedBox(width: Dimensions.space(2));
    y2 = SizedBox(height: Dimensions.space(2));

    xm = const Expanded(child: SizedBox(width: double.infinity));
    ym = const Expanded(child: SizedBox(height: double.infinity));

    z = EdgeInsets.zero;
    h = EdgeInsets.symmetric(horizontal: Dimensions.space(0.5));
    v = EdgeInsets.symmetric(vertical: Dimensions.space(0.5));

    h1 = EdgeInsets.symmetric(horizontal: Dimensions.space());
    v1 = EdgeInsets.symmetric(vertical: Dimensions.space());

    h2 = EdgeInsets.symmetric(horizontal: Dimensions.space(2));
    v2 = EdgeInsets.symmetric(vertical: Dimensions.space(2));

    top = SizedBox(height: UI.padding!.top);
    bottom = SizedBox(height: UI.padding!.bottom);
  }

  static Widget xf([double no = 1]) => SizedBox(width: Dimensions.space(no));
  static Widget yf([double no = 1]) => SizedBox(height: Dimensions.space(no));

  static EdgeInsets hf([double no = 1]) => EdgeInsets.symmetric(
        horizontal: Dimensions.space(no),
      );
  static EdgeInsets vf([double no = 1]) => EdgeInsets.symmetric(
        vertical: Dimensions.space(no),
      );

  static EdgeInsets all([double h = 0.5, double? v]) => EdgeInsets.symmetric(
        vertical: Dimensions.space(v ?? h),
        horizontal: Dimensions.space(h),
      );
}
