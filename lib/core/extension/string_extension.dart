extension TranslateExtension on String {
  String translatedText(String text) =>
      '${this[0].toUpperCase()}${substring(1)}';
}
