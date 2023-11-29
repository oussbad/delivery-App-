import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/url_launcher_service.dart';
import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

class URLLauncherServiceImpl extends URLLauncherService {
  @override
  Future<Either<Failure, bool>> launch(String url) async {
    final isLaunched = await canLaunchUrl(Uri.parse(url));

    if (isLaunched) {
      final launched = await launchUrl(Uri.parse(url));
      return Right(launched);
    } else {
      return Left(LaunchURLFailure());
    }
  }
}
