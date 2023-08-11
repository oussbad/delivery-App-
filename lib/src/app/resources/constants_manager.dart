class ConstantsManager {
  ConstantsManager._();

  ///
  /// Image Picker
  ///
  static const int maxImageSize = 5 * 1024 * 1024; // (in bytes) 5 MB

  ///
  /// Local Storage
  ///
  static const String isFirstTimeUser = 'is_first_time_user';
  static const String isDarkMode = 'isDarkMode';

  ///
  /// API URLs
  ///
  static const String apiKey = '';
  static const String baseUrl = '';
  static const Duration connectTimeout = Duration(microseconds: 15000);
  static const Duration receiveTimeout = Duration(microseconds: 15000);
  static const Duration sendTimeout = Duration(microseconds: 15000);
}
