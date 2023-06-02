// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 18,
            right: 18,
            top: MediaQuery.of(context).padding.top + 30,
            bottom: MediaQuery.of(context).padding.bottom + 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    AppTheme.isLightTheme ? ConstanceData.t1 : ConstanceData.t1,
                    height: 50,
                  ),
                ),
                Text(
                  "Notification",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                children: [

                  com(
                    AppTheme.isLightTheme
                        ? ConstanceData.n33
                        : ConstanceData.n33,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  com(
                    AppTheme.isLightTheme
                        ? ConstanceData.n35
                        : ConstanceData.n35,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  com(
                    AppTheme.isLightTheme
                        ? ConstanceData.n36
                        : ConstanceData.n36,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  com(
                    AppTheme.isLightTheme
                        ? ConstanceData.n37
                        : ConstanceData.n37,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  com(
                    AppTheme.isLightTheme
                        ? ConstanceData.n33
                        : ConstanceData.n33,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  com(
                    AppTheme.isLightTheme
                        ? ConstanceData.n33
                        : ConstanceData.n33,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget com(
      String img,
      ) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: AppTheme.isLightTheme
                ? Color.fromARGB(66, 181, 178, 178)
                : Colors.transparent,
            offset: const Offset(
              1,
              1,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              img,
              height: 40,
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "10:00 AM",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    color: Theme.of(context).disabledColor,
                  ),
                ),
                Text(
                  "Wiro Chang",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Modern and professional as a re...",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 10, color: HexColor("#777E90")),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              AppTheme.isLightTheme ? ConstanceData.n34 : ConstanceData.n34,
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
