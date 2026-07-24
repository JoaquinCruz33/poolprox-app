import 'package:flutter/material.dart';

import '../../data/mock_clients.dart';
import '../../widgets/client_card.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clientes'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockClients.length,
        itemBuilder: (context, index) {
          final client = mockClients[index];

          return ClientCard(
            client: client,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Seleccionaste a ${client.name}')),
              );
            },
          );
        },
      ),
    );
  }
}
