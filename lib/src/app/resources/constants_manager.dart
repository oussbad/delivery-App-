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
  static const String baseUrl = 'https://pamsplhnsjhmxmobscwt.supabase.co';
  static const String apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBhbXNwbGhuc2pobXhtb2JzY3d0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDEwOTIwMDgsImV4cCI6MjAxNjY2ODAwOH0.N0OEatZhIEoou_EZ7AiCKAdsKLHumCZwR-gF9D_4g8M';
  static const Duration connectTimeout = Duration(microseconds: 15000);
  static const Duration receiveTimeout = Duration(microseconds: 15000);
  static const Duration sendTimeout = Duration(microseconds: 15000);
  static const int apiSucces = 200;

  ///
  /// API Endpoints
  ///
  static const String getTemplateEndpoint = '/template';
  static const String signInEndpoint = '/auth/v1/token?grant_type=password';
}
