import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/client.dart';
import '../repositories/client_repository.dart';

final clientRepositoryProvider = Provider<ClientRepository>((ref) {
  return ClientRepository();
});

final clientsProvider = Provider<List<Client>>((ref) {
  final repository = ref.watch(clientRepositoryProvider);
  return repository.getClients();
});
