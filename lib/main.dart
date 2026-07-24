import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation/app_router.dart';

void main() {
  runApp(const ProviderScope(child: PoolProXApp()));
}

class PoolProXApp extends StatelessWidget {
  const PoolProXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
