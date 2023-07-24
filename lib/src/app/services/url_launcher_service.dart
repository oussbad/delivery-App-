import 'package:url_launcher/url_launcher.dart';

import '../core/contracts/url_launcher.dart';

class URLLauncherService implements URLLauncher {
  @override
  Future<void> launchURL(String url) async {
    if (url.startsWith('http')) {
      await _launchWebURL(url);
    } else if (url.startsWith('tel:')) {
      await _makePhoneCall(url);
    } else {
      throw UnimplementedError('Unsupported URL format: $url');
    }
  }
}

Future<void> _launchWebURL(String message) async {
  final whatsappUrl = "https://wa.me/?text=${Uri.parse(message)}";
  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    print('Could not launch WhatsApp');
  }
}
/*
Future<void> _launchWebURL(String url) async {
  if (!await launchUrl(
    Uri(
      scheme: 'URL',
      path: url,

    ),
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}*/
Future<void>  _makePhoneCall(String phoneNumber) async {
  if (await canLaunch('$phoneNumber')) {
    await launch('$phoneNumber');
  } else {
    print('Could not launch $phoneNumber');
  }
}






/*
Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,

  );
  await launchUrl(launchUri);
}*/