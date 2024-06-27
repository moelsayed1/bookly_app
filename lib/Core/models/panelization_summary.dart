import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable{
  final bool containsEpubBubbles;
  final bool containsImageBubbles;

  const PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) => PanelizationSummary(
    containsEpubBubbles: json["containsEpubBubbles"],
    containsImageBubbles: json["containsImageBubbles"],
  );

  Map<String, dynamic> toJson() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };

  @override
  List<Object?> get props => throw UnimplementedError();
}