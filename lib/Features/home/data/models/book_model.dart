// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

import 'package:bookly_app/Features/home/data/models/access_info.dart';
import 'package:bookly_app/Features/home/data/models/sale_info.dart';
import 'package:bookly_app/Features/home/data/models/search_info.dart';
import 'package:bookly_app/Features/home/data/models/volume_info.dart';
import 'package:equatable/equatable.dart';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel extends Equatable{
    final String kind;
    final String id;
    final String etag;
    final String selfLink;
    final VolumeInfo volumeInfo;
    final SaleInfo saleInfo;
    final AccessInfo accessInfo;
    final SearchInfo searchInfo;

    const BookModel({
        required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.volumeInfo,
        required this.saleInfo,
        required this.accessInfo,
        required this.searchInfo,
    });

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json["kind"],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
        saleInfo: SaleInfo.fromJson(json["saleInfo"]),
        accessInfo: AccessInfo.fromJson(json["accessInfo"]),
        searchInfo: SearchInfo.fromJson(json["searchInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo.toJson(),
        "saleInfo": saleInfo.toJson(),
        "accessInfo": accessInfo.toJson(),
        "searchInfo": searchInfo.toJson(),
    };

  @override
  List<Object?> get props => throw UnimplementedError();
}






















