// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:lango/Constance/Constance.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/Profile/Profile.dart';
import 'package:lango/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lango/Profile/Edit_Profile.dart';

class FollowerScreen extends StatefulWidget {
  const FollowerScreen({super.key});

  @override
  State<FollowerScreen> createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Profile(),
                      ),
                    );
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
                  "Follower",
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
            Divider(),
            Row(
              children: [
                Image.asset(
                  AppTheme.isLightTheme
                      ? ConstanceData.pav
                      : ConstanceData.pav,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tina Rahimi",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "student",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 10,
                          color: HexColor("#777E90"),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppTheme.isLightTheme
                        ? HexColor("#E6E8EC")
                        : HexColor("#B1B5C3"),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "+    Follow",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              ],
            ),
            Divider(),
            Row(
              children: [
                Image.asset(
                  AppTheme.isLightTheme
                      ? ConstanceData.pav
                      : ConstanceData.pav,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tina Rahimi",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "student",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 10,
                          color: HexColor("#777E90"),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppTheme.isLightTheme
                        ? HexColor("#E6E8EC")
                        : HexColor("#B1B5C3"),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "+    Follow",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              ],
            ),
            Divider(),
            Row(
              children: [
                Image.asset(
                  AppTheme.isLightTheme
                      ? ConstanceData.pav
                      : ConstanceData.pav,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tina Rahimi",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "student",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 10,
                          color: HexColor("#777E90"),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppTheme.isLightTheme
                        ? HexColor("#E6E8EC")
                        : HexColor("#B1B5C3"),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "+    Follow",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              ],
            ),
            Divider(),
            Row(
              children: [
                Image.asset(
                  AppTheme.isLightTheme
                      ? ConstanceData.pav
                      : ConstanceData.pav,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tina Rahimi",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "student",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 10,
                          color: HexColor("#777E90"),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppTheme.isLightTheme
                        ? HexColor("#E6E8EC")
                        : HexColor("#B1B5C3"),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "+    Follow",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              ],
            ),
            Divider(),
            Row(
              children: [
                Image.asset(
                  AppTheme.isLightTheme
                      ? ConstanceData.pav
                      : ConstanceData.pav,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tina Rahimi",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "student",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 10,
                          color: HexColor("#777E90"),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppTheme.isLightTheme
                        ? HexColor("#E6E8EC")
                        : HexColor("#B1B5C3"),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "+    Follow",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
