class ZartException implements Exception {
  final String message;

  ZartException(this.message);

  @override
  String toString() {
    return message;
  }
}
