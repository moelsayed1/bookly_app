import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet; // Make textSnippet optional

  const SearchInfo({
    this.textSnippet, // Provide a default value if needed
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
    textSnippet: json["textSnippet"] ?? 'No Snippet',
  );

  Map<String, dynamic> toJson() => {
    "textSnippet": textSnippet,
  };

  @override
  List<Object?> get props => [textSnippet];
}