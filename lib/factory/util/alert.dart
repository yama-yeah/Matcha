import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void login_failed_alert(BuildContext context) {
  var login_alertStyle = AlertStyle(
    animationType: AnimationType.grow,
    isCloseButton: true,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    descTextAlign: TextAlign.start,
    animationDuration: Duration(milliseconds: 200),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
    alertAlignment: Alignment.center,
  );

  Alert(
    context: context,
    type: AlertType.error,
    title: "ログイン失敗",
    desc: "正しいUserID、Passwordを入力してください",
    style: login_alertStyle,
    buttons: [
      DialogButton(
        child: Text(
          "OK",
          style: TextStyle(color: Theme.of(context).hintColor, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}

void notify_setting_alert(BuildContext context) {
  var alertStyle = AlertStyle(
    animationType: AnimationType.grow,
    isCloseButton: true,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    descTextAlign: TextAlign.start,
    animationDuration: Duration(milliseconds: 200),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
    alertAlignment: Alignment.center,
  );

  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    if (!isAllowed) {
      Alert(
        context: context,
        type: AlertType.info,
        title: "通知設定",
        desc: "通知をオンにしてください",
        style: alertStyle,
        buttons: [
          DialogButton(
            child: Text(
              "設定画面へ",
              style:
                  TextStyle(color: Theme.of(context).hintColor, fontSize: 20),
            ),
            onPressed: () {
              AwesomeNotifications().requestPermissionToSendNotifications();
              Navigator.pop(context);
            },
            width: 120,
          )
        ],
      ).show();
      // Insert here your friendly dialog box before call the request method
      // This is very important to not harm the user experience
    }
  });
}
