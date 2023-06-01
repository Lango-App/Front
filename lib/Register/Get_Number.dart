// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/Register/OTP.dart';
import 'package:lango/Register/viewmodel/get_number_view_model.dart';
import 'package:lango/Widget/textField_otp.dart';
import 'package:flutter/material.dart';

class GetnumberScreen extends StatefulWidget {
  GetnumberScreen({Key? key}) : super(key: key);

  @override
  State<GetnumberScreen> createState() => _GetnumberState();
}

class _GetnumberState extends State<GetnumberScreen> {
  int pageNumber = 0;

  final PageController _pageController = PageController();
  GetNumberViewModel controller = GetNumberViewModel();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // InkWell(
      //   onTap: () {
      //     FocusScope.of(context).unfocus();
      //   },
      //   child:
      body: Padding(
        padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: MediaQuery.of(context).padding.top + 50,
            bottom: MediaQuery.of(context).padding.bottom + 90),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ConstanceData.p1,
                  height: 21,
                ),
              ],
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
              "Please enter your phone number",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontFamily: 'ProductSans',
                    fontSize: 13,
                    color: Theme.of(context).disabledColor,
                    //fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 115,
            ),
            Expanded(
              flex: 2,
              child: PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    pageNumber = value;
                  });
                },
                children: [
                  //****************** *
                  ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppTheme.isLightTheme
                              ? Color(0xFFFCFCFD)
                              : Color.fromARGB(255, 61, 61, 61),
                          border: Border.all(
                              color: AppTheme.isLightTheme
                                  ? HexColor("#F4F5F6")
                                  : Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: MyTextField(
                            controller: textEditingController,
                            keyboardType: TextInputType.phone,
                            suffixIcon: IconButton(
                              icon: AppTheme.isLightTheme
                                  ? Image.asset(
                                      ConstanceData.p5,
                                      height: 21,
                                    )
                                  : Image.asset(
                                      ConstanceData.dp5,
                                      height: 21,
                                    ),
                              onPressed: () {},
                            ),
                            click: () {},
                            lableText: 'Phone number',
                            lableStyle: TextStyle(
                              fontFamily: 'ProductSans',
                              fontSize: 14,
                              color: Color(0xFF878E9D),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: controller.inprogressGetNumber
                  ? CupertinoActivityIndicator()
                  : InkWell(
                      onTap: () {
                        controller.sendPhoneNumer(
                            context, textEditingController.text);
                        setState(() {
                          controller.inprogressGetNumber = true;
                        });
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => OtpChecking(),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 48,
                        width: 175,
                        decoration: BoxDecoration(
                          color: Color(0xFF3757FF),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Center(
                          child: Text(
                            "Login now",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontFamily: 'ProductSans',
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                          ),
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
