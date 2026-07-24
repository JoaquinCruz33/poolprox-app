import '../../data/mock_clients.dart';
import '../../models/client.dart';
import '../contracts/client_repository.dart';

class MockClientRepository implements ClientRepository {
  @override
  List<Client> getClients() {
    return mockClients;
  }

  @override
  Client? getClientById(String id) {
    try {
      return mockClients.firstWhere((client) => client.id == id);
    } catch (_) {
      return null;
    }
  }
}
