import 'package:url_launcher/url_launcher.dart';

import '../core/contracts/url_launcher.dart';

class URLLauncherService implements URLLauncher {
  @override
  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}