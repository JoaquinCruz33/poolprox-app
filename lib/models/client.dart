class Client {
  final String id;

  final String name;
  final String phone;

  final String address;
  final String neighborhood;

  final double? latitude;
  final double? longitude;

  final String poolType;
  final String frequency;

  final double monthlyPrice;

  final String notes;

  final bool active;

  const Client({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.neighborhood,
    this.latitude,
    this.longitude,
    required this.poolType,
    required this.frequency,
    required this.monthlyPrice,
    this.notes = '',
    this.active = true,
  });
}
