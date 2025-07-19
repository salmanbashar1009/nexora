import 'package:flutter/material.dart';
import 'package:nexora/shared/theme/app_theme.dart';

import 'features/onboarding/presentations/pages/onboarding_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malooz',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      // initialRoute: RouteNames.onboardingScreen,
      // routes: AppRoutes.routes,
      home: const OnboardingPage(),
    );
  }
}