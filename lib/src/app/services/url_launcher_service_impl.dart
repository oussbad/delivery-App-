import 'package:boxpend_flutter_android_app/src/app/core/services/url_launcher_service.dart';
import 'package:url_launcher/url_launcher.dart';

class URLLauncherServiceImpl extends URLLauncherService {
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
