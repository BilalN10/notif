import 'package:core_kosmos/core_package.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:notification_kosmos/notification_kosmos.dart';
import 'package:notification_kosmos/src/providers/notification_provider.dart';
import 'package:ui_kosmos_v4/cta/cta.dart';

final notificationProvider = ChangeNotifierProvider<NotificationProvider>((ref) => NotificationProvider());

/// Widget de notification
class NotificationWidget extends StatefulHookConsumerWidget {
  /// Liste des notifications
  ///
  final List<NotificationModel> notifications;

  final VoidCallback? onBackButtonPressed;

  final String? pageName;

  final bool profilePicture;

  final bool isBackButton;

  /// ThemeData des notifications
  final NotificationThemeData? theme;

  final TextStyle? pageTitleTextStyle;
  final TextStyle? usernameTextStyle;
  final TextStyle? notificationTypeTextStyle;
  final TextStyle? dateTextstyle;
  final Color? ctaBackButtonClr;
  final Color? backgroundColor;

  final Widget Function(BuildContext, WidgetRef)? emptyWidgetBuilder;

  /// Nom du theme
  final String? themeName;

  const NotificationWidget({
    Key? key,
    required this.notifications,
    this.onBackButtonPressed,
    this.pageName,
    this.profilePicture = false,
    this.isBackButton = true,
    this.theme,
    this.pageTitleTextStyle,
    this.usernameTextStyle,
    this.notificationTypeTextStyle,
    this.dateTextstyle,
    this.ctaBackButtonClr,
    this.backgroundColor,
    this.themeName,
    this.emptyWidgetBuilder,
  }) : super(key: key);

  @override
  ConsumerState<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends ConsumerState<NotificationWidget> {
  late final NotificationThemeData theme;

  @override
  void initState() {
    theme = loadThemeData(widget.theme, widget.themeName ?? "notification", () => const NotificationThemeData())!;
    // if (ref.read(notificationProvider).sub == null) {
    //   ref.read(notificationProvider).init(FirebaseAuth.instance.currentUser!.uid);
    // }
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              widget.isBackButton
                  ? Padding(
                      padding: EdgeInsets.only(top: formatHeight(57.5), left: formatWidth(20)),
                      child: CTA.back(
                        onTap: widget.onBackButtonPressed ?? () => Navigator.pop(context),
                        backgroundColor: widget.ctaBackButtonClr ?? theme.ctaBackButtonClr ?? Colors.transparent,
                      ),
                    )
                  : SizedBox(),
              Padding(
                padding: EdgeInsets.only(top: formatHeight(70)),
                child: Center(
                  child: Text(
                    widget.pageName ?? "Notifications",
                    style:
                        widget.pageTitleTextStyle ?? theme.pageTitleTextStyle ?? TextStyle(color: Colors.black, fontSize: sp(16), fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
          widget.notifications.isEmpty
              ? Expanded(
                  child: widget.emptyWidgetBuilder?.call(context, ref) ??
                      Center(
                        child: Text(
                          "onboarding.empty".tr(),
                          style: TextStyle(color: Colors.black, fontSize: sp(16), fontWeight: FontWeight.w600),
                        ),
                      ),
                )
              : Expanded(
                  child: ListView(
                    children: widget.notifications.map((notification) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: formatWidth(15)),
                            child: _buildNotif(notification),
                          ),
                          const Divider(),
                        ],
                      );
                    }).toList(),
                  ),
                )
        ],
      ),
    );
  }

  Widget _buildNotif(NotificationModel notification) {
    String timeAgo() {
      Duration diff = DateTime.now().difference(notification.notificationDataModel!.sendAt!);
      if (diff.inDays > 365) return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "an" : "ans"}";
      if (diff.inDays > 30) return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "mois" : "mois"}";
      if (diff.inDays > 7) return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "semaine" : "semaines"}";
      if (diff.inDays > 0) return "${diff.inDays} ${diff.inDays == 1 ? "jour" : "jours"}";
      if (diff.inHours > 0) return "${diff.inHours} ${diff.inHours == 1 ? "heure" : "heures"}";
      if (diff.inMinutes > 0) return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"}";
      return "à l'instant";
    }

    return Material(
      color: widget.backgroundColor ?? theme.backgroundColor ?? Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: notification.onClick,
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: formatWidth(10)),
                child: widget.profilePicture == true
                    ? (notification.notificationDataModel!.user!.picture != null
                        ? CircleAvatar(
                            radius: 23,
                            backgroundImage: NetworkImage(notification.notificationDataModel!.user!.picture!),
                            backgroundColor: Colors.transparent,
                          )
                        : SvgPicture.asset("assets/placeholder.svg", width: formatWidth(50), height: formatHeight(50), package: "notification_kosmos"))
                    : null,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: formatHeight(2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            notification.notificationDataModel!.user!.firstname! + " " + notification.notificationDataModel!.user!.lastname!,
                            style: widget.usernameTextStyle ??
                                theme.usernameTextStyle ??
                                TextStyle(color: Colors.black, fontSize: sp(15), fontWeight: FontWeight.w700),
                          ),
                          Text(timeAgo(),
                              style:
                                  widget.dateTextstyle ?? theme.dateTextstyle ?? TextStyle(color: Colors.grey, fontSize: sp(11), fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: formatHeight(2)),
                      child: Text(
                        notification.notificationDataModel!.message!,
                        style: widget.notificationTypeTextStyle ??
                            theme.notificationTypeTextStyle ??
                            TextStyle(color: Colors.grey, fontSize: sp(12), fontWeight: FontWeight.w500),
                      ),
                    ),
                    if (notification.notificationChildBuilder != null)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: formatHeight(8)),
                        child: notification.notificationChildBuilder!(context, ref),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
