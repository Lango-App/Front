// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:lango/Constance/Constance.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lango/Profile/Edit_Profile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isdark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 18,
            right: 18,
            top: MediaQuery.of(context).padding.top + 16,
            bottom: MediaQuery.of(context).padding.bottom),
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
                    AppTheme.isLightTheme
                        ? ConstanceData.t1
                        : ConstanceData.t1,
                    height: 50,
                  ),
                ),
                Spacer(),
                Text(
                  "Settings",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 5, right: 5, top: 8),
                children: [
                  com(
                      AppTheme.isLightTheme
                          ? ConstanceData.n21
                          : ConstanceData.dn21,
                      AppTheme.isLightTheme
                          ? ConstanceData.n2
                          : ConstanceData.n2,
                      "Dark mode",
                      isCupertinoBtn: true),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Edit_Profile(userId: '',),
                        ),
                      );
                    },
                    child: com2(
                      AppTheme.isLightTheme
                          ? ConstanceData.n15
                          : ConstanceData.n15,
                      AppTheme.isLightTheme
                          ? ConstanceData.n2
                          : ConstanceData.n2,
                      "Edit profile",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget com2(
      String img,
      String img2,
      String tex,
      ) {
    return Container(
      height: 90,
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
        padding: EdgeInsets.only(left: 15, top:35, right: 15, bottom: 35),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 25,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tex,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              img2,
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget com(String img, String img2, String tex,
      {bool isCupertinoBtn = false}) {
    return Container(
      height: 90,
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
      child: Container(
        padding: EdgeInsets.only(left: 15, top:34, right: 15, bottom: 35),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 25,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tex,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
            Spacer(),
            CupertinoSwitch(
              value: isdark,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (bool? value) {
                setState(() {
                  isdark = value!;
                });
                if (isdark) {
                  MyApp.setCustomeTheme(context, 7);
                } else {
                  MyApp.setCustomeTheme(context, 6);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
