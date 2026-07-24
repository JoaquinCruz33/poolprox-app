import '../../models/visit.dart';

abstract class VisitRepository {
  List<Visit> getVisits();
}
