import 'package:equatable/equatable.dart';

class SaleInfoListPrice extends Equatable{
  final double amount;
  final String currencyCode;

  const SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) => SaleInfoListPrice(
    amount: json["amount"]?.toDouble(),
    currencyCode: json["currencyCode"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "currencyCode": currencyCode,
  };

  @override
  List<Object?> get props => throw UnimplementedError();
}