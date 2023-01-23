import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maiza_portifolio/configs/app.dart';
import 'package:maiza_portifolio/configs/app_text_dimensions.dart';
import 'package:maiza_portifolio/configs/app_theme.dart';
import 'package:maiza_portifolio/configs/spacing.dart';
import 'package:maiza_portifolio/provider/app_theme_provider.dart';
import 'package:maiza_portifolio/responsivity/responsivity.dart';
import 'package:provider/provider.dart';

import '../animations/fader.dart';
import '../configs/dimensions.dart';

class HomePageV2 extends StatefulWidget {
  const HomePageV2({key});

  @override
  State<HomePageV2> createState() => _HomePageV2State();
}

class _HomePageV2State extends State<HomePageV2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appProvider = Provider.of<AppThemeProvider>(context);
    var _icon = FontAwesomeIcons.lightbulb;

    App.init(context);
    return Scaffold(
      body: Responsivity(
        desktop: Container(
          height: size.height * 1.025,
          padding: Spacing.h,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // IconButton(
                  //   icon: Icon(
                  //     _icon,
                  //     color: AppTheme.c!.primary!,
                  //     size: 30,
                  //   ),
                  //   onPressed: () {
                  //     if (_icon == FontAwesomeIcons.lightbulb) {
                  //       _icon = Icons.brightness_2;
                  //       appProvider.setTheme(
                  //         ThemeMode.light,
                  //       );
                  //     } else {
                  //       setState(() {
                  //         _icon = FontAwesomeIcons.solidLightbulb;
                  //       });
                  //       appProvider.setTheme(
                  //         ThemeMode.dark,
                  //       );
                  //     }
                  //   },
                  // ),
                  Positioned(
                    bottom: 0,
                    right: 80,
                    child: Opacity(
                      opacity: 0.9,
                      child: EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 1),
                        duration: const Duration(milliseconds: 200),
                        child: Image.asset(
                          'assets/img_new.png',
                          height: size.width < 200
                              ? size.height * 0.5
                              : size.height * 0.70,
                        ),
                      ),
                    ),
                  ),
                  Spacing.y1!,
                  Switch(
                    inactiveTrackColor: Colors.grey,
                    value: appProvider.isDark,
                    onChanged: (value) {
                      appProvider.setTheme(
                        !value ? ThemeMode.light : ThemeMode.dark,
                      );
                    },
                    activeColor: AppTheme.c!.primary!,
                  ),
                  Spacing.y2!,
                ],
              ),
            ],
          ),
        ),
        mobile: Container(),
        tablet: Container(),
      ),
    );
  }
}
