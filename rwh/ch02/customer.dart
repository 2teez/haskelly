class Customer {
  final int customerId;
  final String name;
  final List<String> address;

  Customer({required this.customerId, required this.name, required this.address});

  @override
  String toString() =>
      'Customer(customerId: $customerId, name: $name, address: $address)';
}
