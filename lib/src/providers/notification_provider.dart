import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notification_kosmos/src/model/notification_data_model.dart';

class NotificationProvider with ChangeNotifier {
  StreamSubscription<QuerySnapshot<Object>?>? _subscription;
  StreamSubscription? get sub => _subscription;

  List<NotificationDataModel> data = [];

  Future<void> init(String userId, [String userPath = "users", String notificationPath = "notifications"]) async {
    if (_subscription != null || data.isNotEmpty) {
      return;
    }

    _subscription = FirebaseFirestore.instance.collection(userPath).doc(userId).collection(notificationPath).snapshots().listen((event) {
      for (final item in event.docChanges) {
        switch (item.type) {
          case DocumentChangeType.added:
            data.add(NotificationDataModel.fromJson(item.doc.data()!).copyWith(id: item.doc.id));
            break;
          case DocumentChangeType.modified:
            final index = data.indexWhere((element) => element.id == item.doc.id);
            if (index >= 0) {
              data[index] = NotificationDataModel.fromJson(item.doc.data()!).copyWith(id: item.doc.id);
            }
            break;
          case DocumentChangeType.removed:
            data.removeWhere((element) => element.id == item.doc.id);
            break;
        }
        data.sort((a, b) => b.sendAt!.compareTo(a.sendAt!));
        notifyListeners();
      }
    });
  }

  void clear([bool notify = true]) {
    _subscription?.cancel();
    _subscription = null;
    data.clear();
    if (notify) notifyListeners();
  }
}
