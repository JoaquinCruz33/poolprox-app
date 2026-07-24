import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A3D91),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.water_drop, color: Colors.white, size: 80),
            SizedBox(height: 20),
            Text(
              'POOLPROX',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Mantenimiento de Piletas',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
