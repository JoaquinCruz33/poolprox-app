import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'navigation/app_router.dart';

void main() {
  runApp(const PoolProXApp());
}

class PoolProXApp extends StatelessWidget {
  const PoolProXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PoolProX',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
