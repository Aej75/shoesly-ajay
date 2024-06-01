enum Gender { men, women, unisex }

///This type of enum is used for product gender
extension GenderText on Gender {
  String get text {
    switch (this) {
      case Gender.men:
        return "Men";
      case Gender.women:
        return "Women";
      case Gender.unisex:
        return "Unisex";
    }
  }
}
