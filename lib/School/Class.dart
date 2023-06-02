import 'package:lango/Constance/Constance.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:flutter/material.dart';
import 'package:lango/School/Course_List.dart';
import 'package:lango/School/Question_List.dart';
import 'package:lango/School/School.dart';
import 'package:lango/School/Teacher_List.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

final int endTime = DateTime.now().millisecondsSinceEpoch + 10000 * 30 * 24 + 1000;

class ClassScreen extends StatefulWidget {
  ClassScreen({Key? key}) : super(key: key);

  @override
  State<ClassScreen> createState() => _ClassState();
}
void onEnd() {
  //print('onEnd');
}
class _ClassState extends State<ClassScreen> {
  static bool class_start = false;
  @override
  Widget build(BuildContext context) {
    CountdownTimerController controller;
    controller = CountdownTimerController(
      endTime: endTime,
    );
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
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => School(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      ConstanceData.par,
                      height: 11.5,
                      width: 6.5,
                    ),
                  ),
                ),

                Spacer(),
                Text(
                  "Pre-IELTS 3",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 5, right: 5, top: 8),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 175,
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
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ConstanceData.pav,
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Dr. Fatemi",
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(

                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(230, 232, 236, 100),
                                          borderRadius: BorderRadius.all(Radius.circular(100)),
                                        ),

                                        width: 76,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child:Row(

                                            children: [
                                              Image.asset(
                                                ConstanceData.co_mem,
                                                height: 24,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "12",
                                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              )
                                            ],
                                          ),
                                        )),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Spacer(),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(230, 232, 236, 100),
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                  ),
                                  width: 180,
                                  height: 47,
                                  child: Center(
                                    child:CountdownTimer(
                                      widgetBuilder: (_, CurrentRemainingTime? time) {
                                        if (time == null || (time.hours == 0 && time.min == 0 && time.sec == 0)) {
                                          return Image.asset(
                                            ConstanceData.co_jo,
                                            height: 47,
                                            width: 180,
                                          );
                                        }
                                        return Text(
                                          '${(time.hours == null || time.hours == 0) ? '00' : time.hours}:${(time.min == null || time.min == 0) ? '00' : time.min}:${(time.sec == null || time.sec == 0) ? '00' : time.sec}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        );
                                      },
                                      controller: controller,
                                      onEnd: onEnd,
                                      endTime: endTime,
                                    ),

                                  ),
                                ),
                                Image.asset(
                                  ConstanceData.co_file,
                                  height: 47,
                                  width: 67,
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: com2(
                        AppTheme.isLightTheme
                            ? ConstanceData.co_re
                            : ConstanceData.co_re,
                        "Recordings"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: com3(
                        ConstanceData.co_qu_gr,
                        "Quiz 01", "13/09 - 06/10","8.5"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: com(
                        ConstanceData.co_qu_ye,
                        "Quiz 02", "13/09 - 06/10",
                        ConstanceData.co_qu_ar),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: com4(
                      ConstanceData.co_qu_gray,
                      "Quiz 03", "13/09 - 06/10",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget com(String img, String tex, String tex2,String img2) {
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
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 40,
              width: 44,
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  tex2,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 10,
                    color: Color.fromRGBO(119, 126, 144, 100),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              img2,
              height: 40,
              width: 44,
            ),

          ],
        ),
      ),
    );
  }
  Widget com2(String img, String tex) {
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
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 40,
              width: 44,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              tex,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget com3(String img, String tex, String tex2, String grade) {
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
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 40,
              width: 44,
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  tex2,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 10,
                    color: Color.fromRGBO(119, 126, 144, 100),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(230, 232, 236, 100),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              width: 44,
              height: 40,
              child: Center(
                child: Text(
                  grade,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget com4(String img, String tex, String tex2) {
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
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 40,
              width: 44,
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  tex2,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 10,
                    color: Color.fromRGBO(119, 126, 144, 100),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

}
