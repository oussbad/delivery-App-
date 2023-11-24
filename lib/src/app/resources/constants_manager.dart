class ConstantsManager {
  ConstantsManager._();

  ///
  /// Inputs
  ///
  static const int maxImageSize = 5 * 1024 * 1024; // (in bytes) 5 MB
  static const int maxPassword = 8; // (in bytes) 5 MB

  ///
  /// Local Storage
  ///
  static const String isFirstTimeUser = 'is_first_time_user';
  static const String isDarkMode = 'isDarkMode';
  static const String langCode = 'lang_code';
  static const String token = 'token';

  ///
  /// API URLs
  ///
  static const String apiKey = '';
  static const String baseUrl = 'https://1a02e1e1-a6a1-426d-83ca-156489879dbc.mock.pstmn.io';
  static const Duration connectTimeout = Duration(microseconds: 15000);
  static const Duration receiveTimeout = Duration(microseconds: 15000);
  static const Duration sendTimeout = Duration(microseconds: 15000);
  static const int apiSucces = 200;

  ///
  /// API Endpoints
  ///
  static const String getTemplateEndpoint = '/template';
}
