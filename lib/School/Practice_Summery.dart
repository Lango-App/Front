import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:flutter/material.dart';

class PracticeSummaryScreen extends StatefulWidget {
  PracticeSummaryScreen({Key? key}) : super(key: key);

  @override
  State<PracticeSummaryScreen> createState() => PracticeSummaryScreenState();
}

class PracticeSummaryScreenState extends State<PracticeSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).padding.top + 40,
            bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    AppTheme.isLightTheme
                        ? ConstanceData.backD
                        : ConstanceData.backD,
                    height: 40,
                  ),
                ),
                Text(
                  "Summary",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Image.asset(
                  AppTheme.isLightTheme
                      ? ConstanceData.jet
                      : ConstanceData.jet,
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Image.asset(
                    AppTheme.isLightTheme
                        ? ConstanceData.grade
                        : ConstanceData.grade,
                    height: 210,
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ConstanceData.arrowDown,
                        height: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Detail infomation",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 10,
                              color: HexColor("#B1B5C3"),
                              fontWeight: FontWeight.bold,
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.isLightTheme
                          ? HexColor("#F4F5F6")
                          : Theme.of(context).cardColor,
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
                            height: 17,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Dration test",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Spacer(),
                          Text(
                            "85 minutes",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.isLightTheme
                          ? HexColor("#F4F5F6")
                          : Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,),
                      child: Row(
                        children: [
                          Image.asset(
                            AppTheme.isLightTheme
                                ? ConstanceData.star
                                : ConstanceData.star,
                            height: 17,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Point",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Spacer(),
                          Text(
                            "60/100 ",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.isLightTheme
                          ? HexColor("#F4F5F6")
                          : Theme.of(context).cardColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,),
                      child: Row(
                        children: [
                          Image.asset(
                            AppTheme.isLightTheme
                                ? ConstanceData.coin
                                : ConstanceData.coin,
                            height: 17,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Reviced coin",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Spacer(),
                          Text(
                            "200",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppTheme.isLightTheme
                                ? HexColor("#EBF1FF")
                                : Theme.of(context).cardColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              "Back",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(30)),
                          ),
                          child: Center(
                            child: Text(
                              "Re task",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
