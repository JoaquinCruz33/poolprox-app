import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/client_provider.dart';
import '../../providers/visit_provider.dart';
import '../../widgets/dashboard/dashboard_stat_card.dart';
import '../../widgets/dashboard/next_visit_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clients = ref.watch(clientsProvider);
    final visits = ref.watch(visitsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('PoolProX')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '¡Buenos días!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 4),

            Text(
              'Este es el resumen de tu jornada.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 24),

            DashboardStatCard(
              icon: Icons.calendar_today,
              title: 'Visitas programadas',
              value: visits.length.toString(),
            ),

            const SizedBox(height: 12),

            const DashboardStatCard(
              icon: Icons.payments,
              title: 'Cobros pendientes',
              value: '2',
            ),

            const SizedBox(height: 12),

            DashboardStatCard(
              icon: Icons.people,
              title: 'Clientes activos',
              value: clients.length.toString(),
            ),

            const SizedBox(height: 24),

            if (visits.isNotEmpty)
              Builder(
                builder: (context) {
                  final nextVisit = visits.first;
                  final client = ref.watch(
                    clientByIdProvider(nextVisit.clientId),
                  );

                  if (client == null) {
                    return const SizedBox.shrink();
                  }

                  final hour = nextVisit.scheduledDate.hour.toString().padLeft(
                    2,
                    '0',
                  );

                  final minute = nextVisit.scheduledDate.minute
                      .toString()
                      .padLeft(2, '0');

                  return NextVisitCard(
                    clientName: client.name,
                    time: '$hour:$minute',
                    address: client.address,
                    onStart: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Iniciando visita de ${client.name}'),
                        ),
                      );
                    },
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
