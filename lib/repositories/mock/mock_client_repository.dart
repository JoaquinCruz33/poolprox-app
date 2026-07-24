import '../../data/mock_clients.dart';
import '../../models/client.dart';
import '../contracts/client_repository.dart';

class MockClientRepository implements ClientRepository {
  @override
  List<Client> getClients() {
    return mockClients;
  }
}
