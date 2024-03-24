import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'application_language.g.dart';

@Riverpod(keepAlive: true)
class ApplicationLanguage extends _$ApplicationLanguage {
  @override
  String build() {
    return Intl.getCurrentLocale();
  }

  void setLanguage(String language) {
    state = language;
  }
}
