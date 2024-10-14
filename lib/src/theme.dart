import 'package:flutter/material.dart';

class NotificationThemeData {
  /// Style du Nom/Prénom de l'utilisateur à l'origine de la notification
  final TextStyle? pageTitleTextStyle;
  final TextStyle? usernameTextStyle;
  final TextStyle? notificationTypeTextStyle;
  final TextStyle? dateTextstyle;
  final Color? ctaBackButtonClr;
  final Color? backgroundColor;

  const NotificationThemeData ({
    this.pageTitleTextStyle,
    this.usernameTextStyle,
    this.notificationTypeTextStyle,
    this.dateTextstyle,
    this.ctaBackButtonClr,
    this.backgroundColor,

  });
}