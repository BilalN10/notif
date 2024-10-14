import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:notification_kosmos/src/model/notification_data_model.dart';

class NotificationModel {
  /// Retour quand la notification est cliqué
  final VoidCallback? onClick;

  final VoidCallback? onClickChild;

  /// Fonction complétant le type de notification
  final Widget Function(BuildContext, WidgetRef)? notificationChildBuilder;
  /// Structure de la notification
  final NotificationDataModel? notificationDataModel;

   NotificationModel ({
    this.onClick,
    this.onClickChild,
    this.notificationChildBuilder,
    this.notificationDataModel,
  });
}