import 'package:core_kosmos/core_package.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class NotifChildBuilder {
  static Widget buildDescriptionNotif(BuildContext context, WidgetRef modelData) {
    return Material(
      child: InkWell(
        // onTap: model.onCLickChild,
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 244, 239, 239),
            borderRadius: BorderRadius.circular(5)
          ),
          padding: EdgeInsets.all(7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec facilisis id dolor id malesuada. Aliquam erat volutpat. Suspendisse potenti. Donec porta turpis accumsan, dictum velit quis, rutrum erat.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: sp(10),
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              SizedBox(
                width: formatWidth(35),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildFriendRequestNotif(BuildContext context, WidgetRef modelData) {
    return Material(
      child: Row(
        children: [
          InkWell(
            // onTap: model.onCLickChild,
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.only(right: formatWidth(16.5)),
              child: Text(
                "Refuser",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: sp(12),
                  fontWeight: FontWeight.w600
                )
              ),
            )
          ),
          InkWell(
            // onTap: modelData.onClickChild,
            onTap: () {},
            child: Container(
              height: formatHeight(35),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.symmetric(horizontal: formatWidth(16.5)),
              child: Center(
                child: Text(
                  "Accepter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sp(12),
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
            )
          ),
        ]
      ),
    );
  }

  static Widget buildRatesNotif(BuildContext context, WidgetRef modelData) {
    return Container(
      width: formatWidth(73),
      height: formatHeight(35),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 244, 239, 239),
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.symmetric(horizontal: formatWidth(10)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star_rounded, color: Colors.black, size: 17.5),
            Text(
              "4,1 / 5",
              style: TextStyle(
                color: Colors.black,
                fontSize: sp(11)
              ),
            )
          ]
        ),
      ),
    );
  }
}