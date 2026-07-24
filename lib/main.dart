import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const PoolProXApp());
}

class PoolProXApp extends StatelessWidget {
  const PoolProXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PoolProX',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
