import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable{
  final String textSnippet;

  const SearchInfo({
    required this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
    textSnippet: json["textSnippet"],
  );

  Map<String, dynamic> toJson() => {
    "textSnippet": textSnippet,
  };

  @override
  List<Object?> get props => throw UnimplementedError();
}