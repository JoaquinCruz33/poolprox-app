import '../../models/client.dart';

abstract class ClientRepository {
  List<Client> getClients();
}
