import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/School/Practice_Summery.dart';
import 'package:flutter/material.dart';

class PracticeDoneScreen extends StatefulWidget {
  PracticeDoneScreen({Key? key}) : super(key: key);

  @override
  State<PracticeDoneScreen> createState() => PracticeDoneScreenState();
}

class PracticeDoneScreenState extends State<PracticeDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   MyApp.setCustomeTheme(context, AppTheme.isLightTheme ? 7 : 6);
      // }),
      body: Padding(
        padding: EdgeInsets.only(
            left: 18,
            right: 18,
            top: MediaQuery.of(context).padding.top + 45,
            bottom: MediaQuery.of(context).padding.bottom + 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
              ],
            ),
            SizedBox(
              height: 130,
            ),
            Expanded(
              child: Image.asset(
                AppTheme.isLightTheme ? ConstanceData.doneFrame : ConstanceData.doneFrame,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(
              height: 140,
            ),
            Text(
              "Done!",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "View summary or close",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 11,
                    color: HexColor("#777E90"),
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 28,
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
              child: Container(
                height: 51,
                width: 180,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text(
                    "View Summary",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
