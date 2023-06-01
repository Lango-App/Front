import 'package:lango/Constance/constance.dart';
import 'package:lango/School/School.dart';
import 'package:lango/Widget/buttons.dart';
import 'package:lango/School/Question_List.dart';
import 'package:flutter/material.dart';
import '../Constance/theme.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => PracticeScreenState();
}

class PracticeScreenState extends State<PracticeScreen> {
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
                  width: 15,
                ),
                Image.asset(
                  AppTheme.isLightTheme ? ConstanceData.listIcon : ConstanceData.listIcon,
                  height: 14,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Practice",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 28,
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
                                ? ConstanceData.timeIcon
                                : ConstanceData.timeIcon,
                            height: 12,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Recents",
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
                            height: 12,
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
                          ? ConstanceData.interface
                          : ConstanceData.interface,
                      "Statistics",
                      "Mr. Chaunarois Santo",
                      false),
                  SizedBox(
                    height: 3,
                  ),
                  sam(
                      AppTheme.isLightTheme
                          ? ConstanceData.interface1
                          : ConstanceData.interface1,
                      "Negative numbers",
                      "Ms. Verra Mussies",
                      false),
                  SizedBox(
                    height: 3,
                  ),
                  sam(
                      AppTheme.isLightTheme
                          ? ConstanceData.interface1
                          : ConstanceData.interface1,
                      "Geometry",
                      "Ms. Verra Mussies",
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => QuestionListScreen(),
          ),
        );
      },
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
                        ? ConstanceData.subject
                        : ConstanceData.subject,
                    height: 42,
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
                              fontSize: 13,
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
                    height: 22,
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
                    ConstanceData.timeIconGray,
                    height: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "20/12/2021",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 10,
                          color: HexColor("#777E90"),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Spacer(),
                  Image.asset(
                    ConstanceData.timeIconGray,
                    height: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "20",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 10,
                          color: HexColor("#777E90"),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    ConstanceData.timeIconGray,
                    height: 15,
                  ),
                  SizedBox(
                    width: 5,
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
