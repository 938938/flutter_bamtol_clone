import 'package:bamtol_market/main.dart';
import 'package:bamtol_market/src/init/page/init_start_page.dart';
import 'package:bamtol_market/src/splash/page/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late bool isInitStarted;

  @override
  void initState() {
    super.initState();
    isInitStarted = prefs.getBool('isInitStarted') ?? true;
  }
  Widget build(BuildContext context) {
    return isInitStarted ? const InitStartPage() : const SplashPage();
  }
}

