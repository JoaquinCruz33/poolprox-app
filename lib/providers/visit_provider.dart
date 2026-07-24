import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/visit.dart';
import '../repositories/contracts/visit_repository.dart';
import '../repositories/mock/mock_visit_repository.dart';

final visitRepositoryProvider = Provider<VisitRepository>((ref) {
  return MockVisitRepository();
});

final visitsProvider = Provider<List<Visit>>((ref) {
  final repository = ref.watch(visitRepositoryProvider);
  return repository.getVisits();
});
