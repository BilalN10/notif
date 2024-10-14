import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core_kosmos/core_package.dart';
import 'package:notification_kosmos/src/model/notification_data_model.dart';

abstract class NotificationController {
  static Future<void> setNotifAsSeen(String userId, String notifId) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).collection('notifications').doc(notifId).update({'seen': true});
    } catch (e) {
      printInDebug(e);
    }
  }

  static Future<void> createNotification(String userId, {
    required String type,
    required String message,
    required NotificationUserDataModel userData,
    Map<String, dynamic>? metadata,
  }) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).collection('notifications').add({
        'seen': false,
        'sendAt': FieldValue.serverTimestamp(),
        'type': type,
        'message': message,
        'user': userData.toJson(),
        'metadata': metadata,
      });
    } catch (e) {
      printInDebug(e);
    }
  }
}
