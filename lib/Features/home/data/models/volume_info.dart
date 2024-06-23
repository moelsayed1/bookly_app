import 'dart:developer';

import 'package:bookly_app/Features/home/data/models/image_links.dart';
import 'package:bookly_app/Features/home/data/models/industry_identifier.dart';
import 'package:bookly_app/Features/home/data/models/panelization_summary.dart';
import 'package:bookly_app/Features/home/data/models/reading_modes.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final DateTime? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;
  final int? averageRating;
  final int? ratingsCount;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.averageRating,
    this.ratingsCount,
  });


  // Factory constructor for creating a VolumeInfo object from JSON
  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"],
    authors: json["authors"] != null
        ? List<String>.from(json["authors"].map((x) => x))
        : null,
    publisher: json["publisher"],
    publishedDate: json["publishedDate"] != null
        ? _parsePublishedDate(json["publishedDate"])
        : null,
    description: json["description"],
    industryIdentifiers: json["industryIdentifiers"] != null
        ? List<IndustryIdentifier>.from(json["industryIdentifiers"]
        .map((x) => IndustryIdentifier.fromJson(x)))
        : null,
    readingModes: json["readingModes"] != null
        ? ReadingModes.fromJson(json["readingModes"])
        : null,
    pageCount: json["pageCount"],
    printType: json["printType"],
    categories: json["categories"] != null
        ? List<String>.from(json["categories"].map((x) => x))
        : null,
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    panelizationSummary: json["panelizationSummary"] != null
        ? PanelizationSummary.fromJson(json["panelizationSummary"])
        : null,
    imageLinks: json["imageLinks"] != null
        ? ImageLinks.fromJson(json["imageLinks"])
        : null,
    language: json["language"],
    previewLink: json["previewLink"],
    infoLink: json["infoLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
    averageRating: json["averageRating"],
    ratingsCount: json["ratingsCount"],
  );

  // Method to convert a VolumeInfo object to JSON
  Map<String, dynamic> toJson() => {
    "title": title,
    "authors": authors != null
        ? List<dynamic>.from(authors!.map((x) => x))
        : [],
    "publisher": publisher,
    "publishedDate": publishedDate != null
        ? "${publishedDate?.year.toString().padLeft(4, '0')}-${publishedDate?.month.toString().padLeft(2, '0')}-${publishedDate?.day.toString().padLeft(2, '0')}"
        : null,
    "description": description,
    "industryIdentifiers": industryIdentifiers != null
        ? List<dynamic>.from(industryIdentifiers!.map((x) => x.toJson()))
        : [],
    "readingModes": readingModes?.toJson(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": categories != null
        ? List<dynamic>.from(categories!.map((x) => x))
        : [],
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary?.toJson(),
    "imageLinks": imageLinks?.toJson(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
    "averageRating": averageRating,
    "ratingsCount": ratingsCount,
  };


  @override
  List<Object?> get props => throw UnimplementedError();
}

DateTime? _parsePublishedDate(String? dateString) {
  if (dateString == null) {
    return null;
  }
  try {
    return DateFormat('yyyy-MM-dd').parse(dateString);
  } catch (e) {
    log('Error parsing date: $e - $dateString');
    return null;
  }
}