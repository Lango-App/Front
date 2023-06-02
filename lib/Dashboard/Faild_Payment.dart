// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_new, library_private_types_in_public_api, use_build_context_synchronously, unused_import
import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/Splash/controller/splash_controller.dart';
import 'package:lango/main.dart';
import 'package:lango/Splash/Onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lango/Dashboard/Dashboard.dart';

class FailedPaymentScreen extends StatefulWidget {
  const FailedPaymentScreen({super.key});

  @override
  State<FailedPaymentScreen> createState() => _FailedPaymentScreenState();
}

class _FailedPaymentScreenState extends State<FailedPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 10),
                child: Text(
                  "Payment failed.",
                  style: TextStyle(
                    fontFamily: "Product Sans",
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "try again.",
                style: TextStyle(
                  fontFamily: "Product Sans Medium",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: SvgPicture.asset('assets/images/img_failed_payment.svg'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: Text("done"),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Color(0xFFFF7979),
                  minimumSize: Size(200, 60),
                  textStyle: const TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
