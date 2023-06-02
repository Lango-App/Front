import 'package:flutter/material.dart';
import 'package:lango/Chats/Chats/Chats.dart';
import 'package:lango/Chats/Group/Group.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ChatDashboard extends StatefulWidget {
  static String tag = '/ChatDashboard';

  @override
  ChatDashboardState createState() => ChatDashboardState();
}

class ChatDashboardState extends State<ChatDashboard> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: SvgPicture.asset(
                        'assets/images/img_arrowleft_gray_900_24x24.svg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
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
                                          SvgPicture.asset(
                                              'assets/images/img_user_gray_900_24x24.svg'),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8,
                                                top: 11,
                                                right: 20,
                                                bottom: 9),
                                            child: Text(
                                              "group".tr,
                                              style: TextStyle(
                                                color: Color(0xff141416),
                                                fontSize: 12,
                                                fontFamily: "Product Sans",
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
                                                "chat".tr.tr,
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
                                        Container(
                                            height: 16,
                                            width: 16,
                                            child: Image.asset(
                                                'assets/images/img_audiowave.png')),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Text(
                                            "room".tr.tr,
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
                  width: size.height,
                  height: size.height,
                  child: index == 0
                      ? GroupScreen()
                      : index == 1
                          ? ChatScreen()
                          : GroupScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
