// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_new, library_private_types_in_public_api, use_build_context_synchronously, unused_import
import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/Splash/controller/splash_controller.dart';
import 'package:lango/main.dart';
import 'package:flutter/material.dart';
import 'package:lango/Splash/Onboard.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController controller = SplashController();
  @override
  void initState() {
    // _loadNextScreen();
    controller.checkServer(context);
    super.initState();
  }

  _loadNextScreen() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacement(
        //To do if is_logged_in => dashboard else =>
        context,
        MaterialPageRoute(builder: (context) => OnBoard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            ConstanceData.Splash,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
