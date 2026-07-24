import 'package:flutter/material.dart';

class NextVisitCard extends StatelessWidget {
  final String clientName;
  final String time;
  final String address;
  final VoidCallback onStart;

  const NextVisitCard({
    super.key,
    required this.clientName,
    required this.time,
    required this.address,
    required this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Próxima visita',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                const Icon(Icons.schedule),
                const SizedBox(width: 8),
                Text(time, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),

            const SizedBox(height: 8),

            Text(
              clientName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Text(address),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: onStart,
                icon: const Icon(Icons.play_arrow),
                label: const Text('Comenzar visita'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
