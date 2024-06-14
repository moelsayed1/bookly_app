import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable{
  final bool text;
  final bool image;

  const ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
    text: json["text"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "image": image,
  };

  @override
  List<Object?> get props => [text, image];
}