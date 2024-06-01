import 'package:flutter/material.dart';

enum ProductColor { black, white, red }

///This type of enum is used for product color
///we have limited number of color in app
///we can expand the number of color in future
extension ProductColorText on ProductColor {
  ///convert enum to [String] name
  String get text {
    switch (this) {
      case ProductColor.black:
        return "Black";
      case ProductColor.red:
        return "Red";
      case ProductColor.white:
        return "White";
    }
  }

  ///get color from enum
  ///
  Color get value {
    switch (this) {
      case ProductColor.black:
        return Colors.black;
      case ProductColor.red:
        return Colors.red;
      case ProductColor.white:
        return Colors.white;
    }
  }
}
