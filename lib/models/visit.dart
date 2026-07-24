class Visit {
  final String id;
  final String clientId;

  final DateTime scheduledDate;
  final DateTime? startTime;
  final DateTime? endTime;

  final String? beforePhotoPath;
  final String? afterPhotoPath;

  final bool vacuumed;
  final bool brushed;
  final bool leafNetUsed;
  final bool basketCleaned;

  final double? ph;
  final double? chlorine;

  final String observations;

  final bool finished;
  final bool paymentRequested;
  final bool paid;

  const Visit({
    required this.id,
    required this.clientId,
    required this.scheduledDate,
    this.startTime,
    this.endTime,
    this.beforePhotoPath,
    this.afterPhotoPath,
    this.vacuumed = false,
    this.brushed = false,
    this.leafNetUsed = false,
    this.basketCleaned = false,
    this.ph,
    this.chlorine,
    this.observations = '',
    this.finished = false,
    this.paymentRequested = false,
    this.paid = false,
  });
}
