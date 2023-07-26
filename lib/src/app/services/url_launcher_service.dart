import 'package:boxpend_flutter_android_app/src/app/core/contracts/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class URLLauncherService extends URLLauncher {
  @override
  Future<void> launchURL(String url) async {
    final isLaunched = await canLaunchUrl(Uri.parse(url));

    if (isLaunched) {
      await launchURL(url);
    } else {
      throw UnimplementedError();
    }
  }
}
