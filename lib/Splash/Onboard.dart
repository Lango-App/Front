// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import

import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/Dashboard/Dashboard.dart';
import 'package:lango/Register/Get_Number.dart';
import 'package:lango/Register/Register.dart';
import 'package:lango/main.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoard> {
  int pageNumber = 0;

  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {},
              children: [
                onBoardin1(),
                onBoardin2(),
                onBoardin3(),
                onBoardin4(),
              ],
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => GetnumberScreen(),
                ),
              );
            }),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color:
                    AppTheme.isLightTheme ? Colors.black : HexColor("#353945"),
                borderRadius: BorderRadius.circular(30),
                // border: Border.all(
                //   color: Theme.of(context).buttonTheme.colorScheme!.primary,
                // ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 14),
                child: Center(
                  child: Text(
                    "Get strated",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => GetnumberScreen(),
                ),
              );
            },
            child: Text(
              "Login",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget onBoardin1() {
    return Padding(
      padding: EdgeInsets.only(
          left: 18,
          right: 18,
          top: MediaQuery.of(context).padding.top + 30,
          bottom: MediaQuery.of(context).padding.bottom + 1),
      child: Column(
        children: [
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob1 : ConstanceData.dob1,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob1_2 : ConstanceData.dob1_2,
            height: 150,
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget onBoardin2() {
    return Padding(
      padding: EdgeInsets.only(
          left: 18,
          right: 18,
          top: MediaQuery.of(context).padding.top + 30,
          bottom: MediaQuery.of(context).padding.bottom + 1),
      child: Column(
        children: [
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob2 : ConstanceData.dob2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob2_2 : ConstanceData.dob2_2,
            height: 150,
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget onBoardin3() {
    return Padding(
      padding: EdgeInsets.only(
          left: 18,
          right: 18,
          top: MediaQuery.of(context).padding.top + 30,
          bottom: MediaQuery.of(context).padding.bottom + 1),
      child: Column(
        children: [
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob3 : ConstanceData.dob3,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob3_2 : ConstanceData.dob3_2,
            height: 150,
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget onBoardin4() {
    return Padding(
      padding: EdgeInsets.only(
          left: 18,
          right: 18,
          top: MediaQuery.of(context).padding.top + 30,
          bottom: MediaQuery.of(context).padding.bottom + 1),
      child: Column(
        children: [
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob4 : ConstanceData.dob4,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            AppTheme.isLightTheme ? ConstanceData.ob4_2 : ConstanceData.dob4_2,
            height: 150,
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
