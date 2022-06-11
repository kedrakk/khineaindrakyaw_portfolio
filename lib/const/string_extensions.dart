extension ExtendedString on String {
  String toCapitalizedString() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
