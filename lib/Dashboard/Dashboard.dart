import 'package:flutter/material.dart';
import 'package:lango/Feed/Feed.dart';
import 'package:lango/Profile/Follower.dart';
import 'package:lango/School/School.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/Constance/Constance.dart';

import '../Chats/Chat_Dashboard.dart';
import '../Profile/Profile.dart';
import 'Coin_Pack.dart';
import 'dashboard_screen.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<Dashboard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          index == 0
              ? DashboardScreen()
              : index == 1
                  ? School()
                  : index == 2
                      ? Feed()
                      : index == 3
                          ? ChatDashboard()
                          : Profile(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 70 + MediaQuery.of(context).padding.bottom,
              decoration: BoxDecoration(
                color: AppTheme.isLightTheme
                    ? Color(0xFFffffff)
                    : HexColor("#111827"),
                border: Border.all(
                    color: AppTheme.isLightTheme
                        ? HexColor("#F4F5F6")
                        : Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(40)),
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
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 0
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i1
                            : ConstanceData.nav_i1_d,
                        height: 26,
                        color: index == 0
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 1
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i2
                            : ConstanceData.nav_i2_d,
                        height: 26,
                        color: index == 1
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 2
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i3
                            : ConstanceData.nav_i3_d,
                        height: 26,
                        color: index == 2
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 3
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i4
                            : ConstanceData.nav_i4_d,
                        height: 26,
                        color: index == 3
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 4;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: index == 4
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 20,
                      child: Image.asset(
                        AppTheme.isLightTheme
                            ? ConstanceData.nav_i5
                            : ConstanceData.nav_i5_d,
                        height: 26,
                        color: index == 4
                            ? AppTheme.isLightTheme
                                ? Theme.of(context).backgroundColor
                                : Colors.white
                            : AppTheme.isLightTheme
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
