import 'package:bookly_app/Features/home/data/models/offer.dart';
import 'package:bookly_app/Features/home/data/models/sale_info_list_price.dart';
import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final SaleInfoListPrice? listPrice;
  final SaleInfoListPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json["country"],
    saleability: json["saleability"],
    isEbook: json["isEbook"],
    listPrice: json["listPrice"] != null
        ? SaleInfoListPrice.fromJson(json["listPrice"])
        : null,
    retailPrice: json["retailPrice"] != null
        ? SaleInfoListPrice.fromJson(json["retailPrice"])
        : null,
    buyLink: json["buyLink"],
    offers: json["offers"] != null
        ? List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x)))
        : null,
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
    "listPrice": listPrice?.toJson(),
    "retailPrice": retailPrice?.toJson(),
    "buyLink": buyLink,
    "offers": offers != null
        ? List<dynamic>.from(offers!.map((x) => x.toJson()))
        : [],
  };

  @override
  List<Object?> get props => throw UnimplementedError();

}