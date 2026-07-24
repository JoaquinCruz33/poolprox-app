import '../data/mock_clients.dart';
import '../models/client.dart';

class ClientRepository {
  List<Client> getClients() {
    return mockClients;
  }
}
