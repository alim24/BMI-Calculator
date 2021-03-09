import 'package:flutter/foundation.dart';

class GenderDataModel {
  final String image;
  final String label;
  final bool isSelected;

  const GenderDataModel({
    @required this.image,
    this.label,
    this.isSelected,
  });
}
