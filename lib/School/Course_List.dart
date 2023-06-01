import 'package:lango/Constance/constance.dart';
import 'package:lango/School/School.dart';
import 'package:lango/Widget/buttons.dart';
import 'package:flutter/material.dart';
import '../Constance/theme.dart';

class CourseListScreen extends StatefulWidget {
  const CourseListScreen({super.key});

  @override
  State<CourseListScreen> createState() => CourseListScreenState();
}

class CourseListScreenState extends State<CourseListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F6),
      body: Padding(
        padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: MediaQuery.of(context).padding.top + 40,
            bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 4,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    AppTheme.isLightTheme ? ConstanceData.backArrow : ConstanceData.backArrow,
                    height: 40,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Course",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 5, right: 5, top: 8),
                children: [
                  Container(
                    height: 47,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,),
                      child: Row(
                        children: [
                          Image.asset(
                            AppTheme.isLightTheme
                                ? ConstanceData.fe_li
                                : ConstanceData.fe_li_d,
                            height: 17,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Most popular",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Spacer(),
                          Image.asset(
                            AppTheme.isLightTheme
                                ? ConstanceData.p11
                                : ConstanceData.p11,
                            height: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  sam(
                      AppTheme.isLightTheme
                          ? ConstanceData.coins
                          : ConstanceData.coins,
                      'IELTS 8',
                      "Mr. Teacher 01",
                      false),
                  SizedBox(
                    height: 3,
                  ),
                  sam(
                      AppTheme.isLightTheme
                          ? ConstanceData.coins
                          : ConstanceData.coins,
                      'IELTS 7',
                      "Ms. Teacher 02",
                      false),
                  SizedBox(
                    height: 3,
                  ),
                  sam(
                      AppTheme.isLightTheme
                          ? ConstanceData.coins
                          : ConstanceData.coins,
                      'Pre-IELTS 3',
                      "Ms. Teacher 03",
                      false),
                  SizedBox(
                    height: 3,
                  ),
                  sam(
                      AppTheme.isLightTheme
                          ? ConstanceData.coins
                          : ConstanceData.coins,
                      'Pre-IELTS 3',
                      "Ms. Teacher 04",
                      true),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sam(String img, String tex, String tex2, bool end) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 118,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(end ? 15 : 5),
              bottomRight: Radius.circular(end ? 15 : 5),),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 18),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppTheme.isLightTheme
                        ? ConstanceData.course
                        : ConstanceData.course,
                    height: 41,
                  ),
                  SizedBox(
                    width: 15,
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
                      Row(
                        children: [
                          Image.asset(
                            ConstanceData.avatar,
                            height: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            tex2,
                            style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 10,
                                color: HexColor("#777E90"),
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(), 
                    Image.asset(
                      img,
                      height: 25,
                    ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(color: Color(0xFFF4F5F6),
              height: 5),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    ConstanceData.contact,
                    height: 14,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "20",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 10,
                      color: HexColor("#777E90"),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    ConstanceData.timeIconGray,
                    height: 13,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "12",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 10,
                      color: HexColor("#777E90"),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
