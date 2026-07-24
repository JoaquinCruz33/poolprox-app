import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '¡Buen día, Joaquín! 👋',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Text(
                'Martes 23 de julio',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),

              const SizedBox(height: 30),

              const InfoCard(
                title: 'Visitas programadas',
                value: '6',
                icon: Icons.calendar_today,
              ),

              const SizedBox(height: 20),

              const InfoCard(
                title: 'Próxima visita',
                value: 'Juan Pérez - 09:00',
                icon: Icons.location_on,
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/clients');
                  },
                  child: const Text(
                    'COMENZAR JORNADA',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
