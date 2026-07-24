import '../../data/mock_visits.dart';
import '../../models/visit.dart';
import '../contracts/visit_repository.dart';

class MockVisitRepository implements VisitRepository {
  @override
  List<Visit> getVisits() {
    return mockVisits;
  }
}
