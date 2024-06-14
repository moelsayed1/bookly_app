import 'package:bookly_app/Features/home/data/models/offer.dart';
import 'package:bookly_app/Features/home/data/models/sale_info_list_price.dart';
import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable{
  final String country;
  final String saleability;
  final bool isEbook;
  final SaleInfoListPrice listPrice;
  final SaleInfoListPrice retailPrice;
  final String buyLink;
  final List<Offer> offers;

  const SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.listPrice,
    required this.retailPrice,
    required this.buyLink,
    required this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json["country"],
    saleability: json["saleability"],
    isEbook: json["isEbook"],
    listPrice: SaleInfoListPrice.fromJson(json["listPrice"]),
    retailPrice: SaleInfoListPrice.fromJson(json["retailPrice"]),
    buyLink: json["buyLink"],
    offers: List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
    "listPrice": listPrice.toJson(),
    "retailPrice": retailPrice.toJson(),
    "buyLink": buyLink,
    "offers": List<dynamic>.from(offers.map((x) => x.toJson())),
  };

  @override

  List<Object?> get props => throw UnimplementedError();
}