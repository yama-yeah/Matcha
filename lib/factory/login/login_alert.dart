import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void login_failed_widget(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "ログイン失敗",
    desc: "正しいUserID、Passwordを入力してください",
    style: alertStyle,
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

var alertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: true,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  descTextAlign: TextAlign.start,
  animationDuration: Duration(milliseconds: 200),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
  ),
  alertAlignment: Alignment.center,
);
