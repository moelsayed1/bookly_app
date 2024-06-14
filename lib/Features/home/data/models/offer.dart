import 'package:bookly_app/Features/home/data/models/offer_list_price.dart';
import 'package:equatable/equatable.dart';

class Offer extends Equatable{
  final int finskyOfferType;
  final OfferListPrice listPrice;
  final OfferListPrice retailPrice;

  const Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
    finskyOfferType: json["finskyOfferType"],
    listPrice: OfferListPrice.fromJson(json["listPrice"]),
    retailPrice: OfferListPrice.fromJson(json["retailPrice"]),
  );

  Map<String, dynamic> toJson() => {
    "finskyOfferType": finskyOfferType,
    "listPrice": listPrice.toJson(),
    "retailPrice": retailPrice.toJson(),
  };

  @override
  List<Object?> get props => throw UnimplementedError();

}