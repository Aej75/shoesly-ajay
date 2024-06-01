enum ProductSort { recent, lowPrice, highPrice }

extension ProductSortExtension on ProductSort {
  String get text {
    switch (this) {
      case ProductSort.recent:
        return "Most recent";
      case ProductSort.lowPrice:
        return "Lowest price";
      case ProductSort.highPrice:
        return "Highest price";
    }
  }
}
