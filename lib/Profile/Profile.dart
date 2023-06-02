import 'package:flutter/material.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/Constance/Constance.dart';
import 'package:lango/Profile/Profile_Saved.dart';

import 'Profile_Comment.dart';
import 'Profile_Post.dart';
import 'Settings.dart';


class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index = 0;
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppTheme.isLightTheme ? ConstanceData.par : ConstanceData.par,
                  height: 11.5,
                  width: 6.5,
                ),
                Spacer(),
                Text(
                  "Detail",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),

                ),

                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SettingScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppTheme.isLightTheme
                        ? ConstanceData.pset
                        : ConstanceData.pset,
                    height: 25.16,
                    width: 25.16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                AppTheme.isLightTheme ? ConstanceData.pav : ConstanceData.pav,
                                height: 124,
                                width: 124,
                              ),
                              SizedBox(height: 41),
                              Text(
                                "User01",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "student",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(163, 171, 178, 100),
                                ),

                              ),
                            ],
                          ),
                        ]
                    ),
                    SizedBox(
                        height: 59
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "7",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(166, 166, 166, 100),
                                ),

                              ),
                              Text(
                                "Post",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(166, 166, 166, 100),
                                ),

                              ),
                            ],

                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "150",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(166, 166, 166, 100),
                                ),

                              ),
                              Text(
                                "Following",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(166, 166, 166, 100),
                                ),

                              ),
                            ],

                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "250",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(166, 166, 166, 100),
                                ),

                              ),
                              Text(
                                "Follower",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(166, 166, 166, 100),
                                ),

                              ),
                            ],

                          )
                        ]
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            AppTheme.isLightTheme ? ConstanceData.pfl : ConstanceData.pfl,
                            height: 44,
                            width: 158,
                          ),
                          Spacer(),
                          Image.asset(
                            AppTheme.isLightTheme ? ConstanceData.pms : ConstanceData.pms,
                            height: 44,
                            width: 158,
                          )
                        ]
                    ),
                    SizedBox(height: 50,),
                    Container(
                      padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 85, top:5),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              height: 50 + MediaQuery.of(context).padding.bottom,
                              decoration: BoxDecoration(
                                color: Color(0xFFE6E8EC),
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            index = 0;
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 99,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(30)),
                                            color: index == 0
                                                ? Colors.white
                                                : Color(0xFFE6E8EC),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                index = 0;
                                              });
                                            },
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    AppTheme.isLightTheme ? ConstanceData.fe : ConstanceData.fe_d,
                                                    height: 16,
                                                    width: 16,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8,
                                                        top: 11,
                                                        right: 20,
                                                        bottom: 9),
                                                    child: Text(
                                                      "Post",
                                                      style: TextStyle(
                                                        color: Color(0xff141416),
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              index = 1;
                                            });
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              width: 100,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                color: index == 1
                                                    ? Colors.white
                                                    : Color(0xFFE6E8EC),
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    index = 1;
                                                  });
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 16,
                                                      width: 16,
                                                      child: Image.asset(
                                                          'assets/images/img_communication.png'),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(
                                                        left: 8,
                                                      ),
                                                      child: Text(
                                                        "Comment",
                                                        style: TextStyle(
                                                          color: Color(0xff141416),
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ))),
                                    ),
                                    Flexible(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            index = 2;
                                          });
                                        },
                                        child: Container(
                                          width: 100,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(30)),
                                            color: index == 2
                                                ? Colors.white
                                                : Color(0xFFE6E8EC),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                index = 2;
                                              });
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  AppTheme.isLightTheme ? ConstanceData.psa : ConstanceData.psa,
                                                  height: 16,
                                                  width: 16,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                    left: 8,
                                                  ),
                                                  child: Text(
                                                    "Save",
                                                    style: TextStyle(
                                                      color: Color(0xff141416),
                                                      fontSize: 12,
                                                      fontFamily: "Product Sans",
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: index == 0
                              ? Profile_Post()
                              : index == 1
                              ? Profile_Comment()
                              : Profile_Saved(),
                        ),
                      ),
                    ),
                  ]
              ),
            Spacer(),

          ],


        ),

      ),

    );
  }
}
