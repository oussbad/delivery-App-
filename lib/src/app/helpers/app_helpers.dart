class AppHelpers {
  AppHelpers._();

  static String openWhatsApp(String phoneNumber) {
    return 'https://wa.me/$phoneNumber';
  }

  static String makeAPhoneCall(String phoneNumber) {
    return 'tel://$phoneNumber';
  }
}
