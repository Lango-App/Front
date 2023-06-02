import 'package:lango/Constance/Constance.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:flutter/material.dart';

class School extends StatefulWidget {
  School({Key? key}) : super(key: key);

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
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
              children: [
                Image.asset(
                  AppTheme.isLightTheme
                      ? ConstanceData.sch_av
                      : ConstanceData.sch_av,
                  height: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Hi, User",
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
                  Row(
                    children: [
                      com(ConstanceData.sch_cp, "Current practice", "0 quiz",
                          "#003F88"),
                      SizedBox(
                        width: 10,
                      ),
                      com(ConstanceData.sch_pc, "Practice completed",
                          "120 quiz", "#FDC500"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      com(ConstanceData.sch_coc, "Course completed",
                          "120 course", "#FFD500"),
                      SizedBox(
                        width: 10,
                      ),
                      com(ConstanceData.sch_coa, "Active course", "1 course",
                          "#00509D"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: com2(
                        AppTheme.isLightTheme
                            ? ConstanceData.sch_cou
                            : ConstanceData.sch_cou,
                        "Courses",
                        "100+"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  com2(
                      AppTheme.isLightTheme
                          ? ConstanceData.sch_me
                          : ConstanceData.sch_me,
                      "Mentors",
                      "30+"),
                  SizedBox(
                    height: 10,
                  ),
                  com2(
                      AppTheme.isLightTheme
                          ? ConstanceData.sch_pr
                          : ConstanceData.sch_pr,
                      "Practices",
                      "100+"),
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

  Widget com(String img, String text1, String text2, String color) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: HexColor(color),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    img,
                    height: 30,
                  ),
                  Spacer(),
                  Image.asset(
                    AppTheme.isLightTheme
                        ? ConstanceData.sch_ar
                        : ConstanceData.sch_ar,
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                text1,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: HexColor("#FFFFFF"),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text2,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: HexColor("#A3ABB2"),
                      fontSize: 12,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget com2(String img, String tex, String tex2) {
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
              height: 30,
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
                        fontSize: 14,
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
                        color: Theme.of(context).disabledColor,
                      ),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              AppTheme.isLightTheme
                  ? ConstanceData.sch_ar_d
                  : ConstanceData.sch_ar_d,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
