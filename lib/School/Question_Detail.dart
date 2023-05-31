// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace

import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/School/Question_List.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';

class QuestionDetailsScreen extends StatefulWidget {
  QuestionDetailsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionDetailsScreen> createState() => QuestionDetailsScreenState();
}

void onEnd() {
  //print('onEnd');
}

class QuestionDetailsScreenState extends State<QuestionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    CountdownTimerController controller;
    int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30 * 24 + 1000;
    controller = CountdownTimerController(
      endTime: endTime,
    );
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F6),
      body: Padding(
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).padding.top + 30,
            bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    AppTheme.isLightTheme
                        ? ConstanceData.backSmall
                        : ConstanceData.backSmall,
                    height: 42,
                  ),
                ),
                Spacer(),
                Text(
                  "Placement",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    ConstanceData.r2Green,
                    height: 42,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8),
                children: [
                  Container(
                    height: 270,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20,
                          bottom: MediaQuery.of(context).padding.bottom),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                ConstanceData.question,
                                height: 35,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Question 3",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Spacer(),
                              Text(
                                "03",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                "/10",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 12,
                                      color: HexColor("#B1B5C3"),
                                      fontWeight: FontWeight.bold,
                                    ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Placement",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Grammer",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 11,
                                      color: HexColor("#777E90"),
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "A question is here.",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,),
                      child: Row(
                        children: [
                          Text(
                            "+",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 20,
                                    ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "A",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            width: 40,
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Theme.of(context).primaryColor;
                                    return Color(0xFFF4F5F6);
                                  },
                                ),
                                shape: MaterialStateProperty.all<OutlinedBorder>(
                                  CircleBorder(),
                                ),
                                elevation: MaterialStateProperty.all<double>(0),
                                backgroundColor:  MaterialStateProperty.all<Color>(
                                  Color(0xFFF4F5F6)
                                ),
                              ),
                              child: Text(
                                "A",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 214, 213, 213),
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,),
                      child: Row(
                        children: [
                          Text(
                            "+",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 20,
                                    ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "B",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            width: 40,
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Theme.of(context).primaryColor;
                                    return Color(0xFFF4F5F6);
                                  },
                                ),
                                shape: MaterialStateProperty.all<OutlinedBorder>(
                                  CircleBorder(),
                                ),
                                elevation: MaterialStateProperty.all<double>(0),
                                backgroundColor:  MaterialStateProperty.all<Color>(
                                  Color(0xFFF4F5F6)
                                ),
                              ),
                              child: Text(
                                "B",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 214, 213, 213),
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,),
                      child: Row(
                        children: [
                          Text(
                            "+",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 20,
                                    ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "C",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            width: 40,
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Theme.of(context).primaryColor;
                                    return Color(0xFFF4F5F6);
                                  },
                                ),
                                shape: MaterialStateProperty.all<OutlinedBorder>(
                                  CircleBorder(),
                                ),
                                elevation: MaterialStateProperty.all<double>(0),
                                backgroundColor:  MaterialStateProperty.all<Color>(
                                  Color(0xFFF4F5F6)
                                ),
                              ),
                              child: Text(
                                "C",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 214, 213, 213),
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,),
                      child: Row(
                        children: [
                          Text(
                            "+",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 20,
                                    ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "D",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            width: 40,
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Theme.of(context).primaryColor;
                                    return Color(0xFFF4F5F6);
                                  },
                                ),
                                shape: MaterialStateProperty.all<OutlinedBorder>(
                                  CircleBorder(),
                                ),
                                elevation: MaterialStateProperty.all<double>(0),
                                backgroundColor:  MaterialStateProperty.all<Color>(
                                  Color(0xFFF4F5F6)
                                ),
                              ),
                              child: Text(
                                "D",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 214, 213, 213),
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 109, right: 109,),
                    width: 30,
                    height: 32,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE1E8F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0,
                          alignment: Alignment.centerLeft),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset(
                              ConstanceData.time1,
                              height: 14,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: CountdownTimer(
                              widgetBuilder: (_, CurrentRemainingTime? time) {
                                if (time == null) {
                                  return Text(
                                    '0:00',
                                    style: TextStyle(
                                      color: Color(0xFF4D6AFF),
                                      fontFamily: 'ProductSans',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                }
                                return Text(
                                  '${(time.min == null || time.min == 0) ? '0' : time.min}:${(time.sec == null || time.sec == 0) ? '00' : time.sec}',
                                  style: TextStyle(
                                    color: Color(0xFF4D6AFF),
                                    fontFamily: 'ProductSans',
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                              controller: controller,
                              onEnd: onEnd,
                              endTime: endTime,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppTheme.isLightTheme ? ConstanceData.backSmallWhite : ConstanceData.backSmallWhite,
                  height: 55,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuestionListScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
      
                        children: [
                          Image.asset(
                            ConstanceData.arrowLeft,
                            height: 20,
                          ),
                          Spacer(),
                          Text(
                            "03",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "/10",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 13,
                                    color: HexColor("#B1B5C3"),
                                    fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Image.asset(
                            ConstanceData.arrowRight,
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  AppTheme.isLightTheme ? ConstanceData.backSmallWhite : ConstanceData.backSmallWhite,
                  height: 55,
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
