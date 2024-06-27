// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';


import 'package:bookly_app/Core/models/access_info.dart';
import 'package:bookly_app/Core/models/sale_info.dart';
import 'package:bookly_app/Core/models/search_info.dart';
import 'package:bookly_app/Core/models/volume_info.dart';
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
        volumeInfo: json["volumeInfo"] != null ? VolumeInfo.fromJson(json["volumeInfo"]) : const VolumeInfo(), // Handle null volumeInfo
        saleInfo: json["saleInfo"] != null ? SaleInfo.fromJson(json["saleInfo"]) : const SaleInfo(), // Handle null saleInfo
        accessInfo: json["accessInfo"] != null ? AccessInfo.fromJson(json["accessInfo"]) : const AccessInfo(), // Handle null accessInfo
        searchInfo: json["searchInfo"] != null ? SearchInfo.fromJson(json["searchInfo"]) : const SearchInfo(), // Handle null searchInfo
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






















