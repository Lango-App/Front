// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_new, library_private_types_in_public_api, use_build_context_synchronously, unused_import
import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/Splash/controller/splash_controller.dart';
import 'package:lango/main.dart';
import 'package:flutter/material.dart';
import 'package:lango/Splash/Onboard.dart';

class SeccessPaymentScreen extends StatefulWidget {
  SeccessPaymentScreen({Key? key}) : super(key: key);

  @override
  _SeccessPaymentState createState() => _SeccessPaymentState();
}

class _SeccessPaymentState extends State<SeccessPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(80, 175, 149, 100),
      body: Column(

        children: [
          Text(
            "Successful payment!",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "You have 1000 coins",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),

        ],
      ),
    );
  }
}