import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:flutter/material.dart';

enum NotificationState { enabled, disabled }

class NotificationAlertWidget extends StatelessWidget {
  const NotificationAlertWidget({
    super.key,
    required this.notificationsState,
    required this.enableNotifications,

  });

  final String notificationsState;
  final VoidCallback enableNotifications;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: AppPalette.bg1,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 8,
            decoration: BoxDecoration(
              color: AppPalette.warning,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationsState,
                style: const TextStyle(
                  color: Color.fromARGB(255, 198, 186, 186),
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: enableNotifications, // TODO enableNotifications,
                child: Text(
                  "Enable",
                  style: TextStyle(
                    color: AppPalette.warning, // TODO notificationsStateColor,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: null,
              child: Icon(
                Icons.cancel_outlined,
                color: AppPalette.warning,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
