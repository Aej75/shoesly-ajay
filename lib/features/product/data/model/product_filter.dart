import 'package:code_test/core/enum/product_color.dart';
import 'package:code_test/core/enum/product_gender.dart';
import 'package:code_test/core/enum/product_sort.dart';
import 'package:code_test/features/brand/data/model/brand.dart';
import 'package:code_test/features/product/data/model/price_range.dart';

///This class is used to filter the product from database
///one or more argument can be null
///brand, range, gender, color
///null argument will be replaced by their default
class ProductFilter {
  Brand? brand;
  PriceRange? range;
  ProductSort? sortBy;
  Gender? gender;
  ProductColor? color;
  int limit;

  ProductFilter(
      {this.brand,
      this.range,
      this.sortBy,
      this.gender,
      this.color,
      required this.limit});

  int get appliedCount {
    int count = 0;
    for (var field in [brand, range, sortBy, gender, color]) {
      if (field != null) {
        count++;
      }
    }
    return count;
  }

  static int perPag = 10;
}
