import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'core/utils/routes_manger.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.router,
      initialRoute: RoutesManager.splashRoute,
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
    );
  }
}
