import 'package:bookly_app/Features/home/data/models/image_links.dart';
import 'package:bookly_app/Features/home/data/models/industry_identifier.dart';
import 'package:bookly_app/Features/home/data/models/panelization_summary.dart';
import 'package:bookly_app/Features/home/data/models/reading_modes.dart';
import 'package:equatable/equatable.dart';

class VolumeInfo extends Equatable{
  final String title;
  final List<String> authors;
  final String publisher;
  final DateTime publishedDate;
  final String description;
  final List<IndustryIdentifier> industryIdentifiers;
  final ReadingModes readingModes;
  final int pageCount;
  final String printType;
  final List<String> categories;
  final String maturityRating;
  final bool allowAnonLogging;
  final String contentVersion;
  final PanelizationSummary panelizationSummary;
  final ImageLinks imageLinks;
  final String language;
  final String previewLink;
  final String infoLink;
  final String canonicalVolumeLink;

  const VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"],
    authors: List<String>.from(json["authors"].map((x) => x)),
    publisher: json["publisher"],
    publishedDate: DateTime.parse(json["publishedDate"]),
    description: json["description"],
    industryIdentifiers: List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromJson(x))),
    readingModes: ReadingModes.fromJson(json["readingModes"]),
    pageCount: json["pageCount"],
    printType: json["printType"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    panelizationSummary: PanelizationSummary.fromJson(json["panelizationSummary"]),
    imageLinks: ImageLinks.fromJson(json["imageLinks"]),
    language: json["language"],
    previewLink: json["previewLink"],
    infoLink: json["infoLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "authors": List<dynamic>.from(authors.map((x) => x)),
    "publisher": publisher,
    "publishedDate": "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
    "description": description,
    "industryIdentifiers": List<dynamic>.from(industryIdentifiers.map((x) => x.toJson())),
    "readingModes": readingModes.toJson(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary.toJson(),
    "imageLinks": imageLinks.toJson(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
  };

  @override
  List<Object?> get props => throw UnimplementedError();
}