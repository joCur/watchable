extension MapExtensions on Map<dynamic, dynamic> {
  Map<String, dynamic> toJsonMap() {
    return Map<String, dynamic>.from(this);
  }
}
