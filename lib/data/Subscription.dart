class Subscription {
  const Subscription(
      {required this.imageName,
      required this.name,
      required this.nextPaymentDate,
      required this.perMonthPayment});

  final String imageName;
  final String name;
  final String nextPaymentDate;
  final double perMonthPayment;
}
