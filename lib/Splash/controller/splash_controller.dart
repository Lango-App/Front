import 'package:flutter/material.dart';
import 'package:lango/Dashboard/Dashboard.dart';
import 'package:lango/Dashboard/dashboard_screen.dart';
import 'package:lango/Splash/Onboard.dart';
import 'package:lango/utils/shared_preferenc/perf.dart';
import 'package:lango/utils/strorage/secure.dart';

class SplashController {
  void checkServer(BuildContext context) async {
    var token = SimpleUserStorage().getToken();
    token.then((value) {
      if (value == null) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnBoard(),
            ));
      } else {
        SimpleUserPreferences.setToken(value);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DashboardScreen(),
          ),
        );
      }
    });
  }
}
