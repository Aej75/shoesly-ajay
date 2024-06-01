enum ReviewScoreFilter { all, five, four, three, two, one }

extension ReviewFilterText on ReviewScoreFilter {
  String get text {
    switch (this) {
      case ReviewScoreFilter.all:
        return "All";
      case ReviewScoreFilter.five:
        return "5 Stars";
      case ReviewScoreFilter.four:
        return "4 Stars";
      case ReviewScoreFilter.three:
        return "3 Stars";
      case ReviewScoreFilter.two:
        return "2 Stars";
      case ReviewScoreFilter.one:
        return "1 Star";
    }
  }

  int? get value {
    switch (this) {
      case ReviewScoreFilter.all:
        return null;
      case ReviewScoreFilter.five:
        return 5;
      case ReviewScoreFilter.four:
        return 4;
      case ReviewScoreFilter.three:
        return 3;
      case ReviewScoreFilter.two:
        return 2;
      case ReviewScoreFilter.one:
        return 1;
    }
  }
}
