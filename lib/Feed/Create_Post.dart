// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use

import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:flutter/material.dart';
import 'package:lango/Widget/textFields.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => NewPostScreenState();
}

var post_text = TextEditingController();

class NewPostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F6),
      body: Padding(
        padding: EdgeInsets.only(
            left: 18,
            right: 18,
            top: MediaQuery.of(context).padding.top + 40,
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
                        ? ConstanceData.back
                        : ConstanceData.back,
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New post",
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "To Feed",
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF777E90),
                      ),
                    )
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    AppTheme.isLightTheme ? ConstanceData.r2 : ConstanceData.r2,
                    height: 43,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 255,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.isLightTheme
                        ? Color(0xFFD6D7D8)
                        : Colors.transparent,
                    offset: const Offset(
                      5,
                      5,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppTheme.isLightTheme
                            ? HexColor("#F4F5F6")
                            : HexColor("#353945"),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(19),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppTheme.isLightTheme
                                  ? ConstanceData.test
                                  : ConstanceData.test,
                              height: 43,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grammer test",
                                  style: TextStyle(
                                    fontFamily: 'ProdactSans',
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
                                      "User 02",
                                      style: TextStyle(
                                        fontFamily: 'ProdactSans',
                                        fontSize: 10,
                                        color: HexColor("#777E90"),
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        controller: post_text,
                        style: TextField.materialMisspelledTextStyle,
                        decoration: InputDecoration(
                          hintText: 'Type here',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 189, 195, 202),
                            fontFamily: 'ProductSans',
                            fontSize: 11,
                            decoration: TextDecoration.none,
                          ),
                          contentPadding: EdgeInsets.all(5),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
