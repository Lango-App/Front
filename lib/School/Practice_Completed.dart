import 'package:lango/Constance/Constance.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:flutter/material.dart';
import 'package:lango/School/Course_List.dart';
import 'package:lango/School/Practice_Summery.dart';
import 'package:lango/School/Question_List.dart';
import 'package:lango/School/School.dart';
import 'package:lango/School/Teacher_List.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

final int endTime = DateTime.now().millisecondsSinceEpoch + 10000 * 30 * 24 + 1000;

class PracticeCompletedScreen extends StatefulWidget {
  PracticeCompletedScreen({Key? key}) : super(key: key);

  @override
  State<PracticeCompletedScreen> createState() => _PracticeCompletedScreenState();
}
void onEnd() {
  //print('onEnd');
}
class _PracticeCompletedScreenState extends State<PracticeCompletedScreen> {
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
                  "Practice completed",
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PracticeSummaryScreen(),
                        ),
                      );
                    },
                    child: com3(
                        ConstanceData.co_qu_gr,
                        "Practice 01", "13/09 - 06/10","8.5"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PracticeSummaryScreen(),
                        ),
                      );
                    },
                    child: com3(
                        ConstanceData.co_qu_gr,
                        "Practice 02", "13/09 - 06/10","8.5"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PracticeSummaryScreen(),
                        ),
                      );
                    },
                    child: com3(
                        ConstanceData.co_qu_gr,
                        "Practice 03", "13/09 - 06/10","8.5"),
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

}
