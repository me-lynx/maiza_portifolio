import 'package:flutter/material.dart';
import 'package:maiza_portifolio/home/home_page_v2.dart';
import 'package:maiza_portifolio/provider/app_theme_provider.dart';
import 'package:maiza_portifolio/provider/scrolling_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:maiza_portifolio/configs/theme_core.dart' as themecore;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppThemeProvider()),
        ChangeNotifierProvider(create: (_) => ScrollingProvider()),
      ],
      child: Consumer<AppThemeProvider>(
        builder: (context, value, _) => MaterialChild(
          provider: value,
        ),
      ),
    );
  }
}

class MaterialChild extends StatefulWidget {
  final AppThemeProvider provider;
  const MaterialChild({Key? key, required this.provider}) : super(key: key);

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

class _MaterialChildState extends State<MaterialChild> {
  void initAppTheme() {
    final appProviders = AppThemeProvider.state(context);
    appProviders.init();
  }

  @override
  void initState() {
    initAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maiza Louise',
      theme: themecore.themeLight,
      darkTheme: themecore.themeDark,
      themeMode: widget.provider.themeMode,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePageV2(),
      },
    );
  }
}
