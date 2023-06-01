// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, deprecated_member_use, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';
import 'package:lango/Register/Register.dart';
import 'package:lango/Register/viewmodel/get_number_view_model.dart';

class OtpChecking extends StatefulWidget {
  final String userId;
  OtpChecking({Key? key, required this.userId}) : super(key: key);

  @override
  State<OtpChecking> createState() => _OtpCheckingState();
}

void onEnd() {
  //print('onEnd');
}

class _OtpCheckingState extends State<OtpChecking> {
  @override
  GetNumberViewModel viewModel = GetNumberViewModel();
  Widget build(BuildContext context) {
    CountdownTimerController controller;
    int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30 * 4 + 1000;
    controller = CountdownTimerController(
      endTime: endTime,
    );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ConstanceData.p1,
              height: 21,
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              "Login in to Lango!",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontFamily: 'ProductSans',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "OTP sent to your phone",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontFamily: 'ProductSans',
                    fontSize: 13,
                    color: Theme.of(context).disabledColor,
                    //fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  OtpTextField(
                    onSubmit: (value) {
                      viewModel.sendOtp(context, value, widget.userId);
                    },
                    numberOfFields: 6,
                    focusedBorderColor: Color(0xFFF2F3F5),
                    showFieldAsBox: true,
                    fieldWidth: 50,
                    autoFocus: true,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Color(0xFF000002),
                          fontSize: 12,
                        ),
                    fillColor: HexColor("#F2F3F5"),
                    keyboardType: TextInputType.number,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  // width: 78,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEBF1FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 0,
                        alignment: Alignment.centerLeft),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          child: Image.asset(
                            ConstanceData.time1,
                            height: 14,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                        SizedBox(
                          width: 7,
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
                                    fontSize: 12,
                                  ),
                                );
                              }
                              return Text(
                                '${(time.min == null || time.min == 0) ? '0' : time.min}:${(time.sec == null || time.sec == 0) ? '00' : time.sec}',
                                style: TextStyle(
                                  color: Color(0xFF4D6AFF),
                                  fontFamily: 'ProductSans',
                                  fontSize: 12,
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
                Container(
                  height: 32,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEBF1FF),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Send again",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              fontFamily: 'ProductSans',
                              color: Color(0xFF4D6AFF),
                            ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      // Image.asset(
                      //   'assets/images/vector.png',
                      //   height: 15,
                      // )
                      Icon(
                        CupertinoIcons.refresh,
                        size: 15,
                        // TODO:pass Color
                        color: Color(0xFF4D6AFF),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Center(
            //   child: InkWell(
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (_) => RegisterScreen(),
            //         ),
            //       );
            //     },
            //     child: Container(
            //       height: 60,
            //       width: 200,
            //       decoration: BoxDecoration(
            //         color: Theme.of(context).primaryColor,
            //         borderRadius: BorderRadius.all(Radius.circular(30)),
            //       ),
            //       child: Center(
            //         child: Text(
            //           "Continue",
            //           style: Theme.of(context).textTheme.bodyText1!.copyWith(
            //                 fontSize: 12,
            //                 color: Colors.white,
            //               ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
