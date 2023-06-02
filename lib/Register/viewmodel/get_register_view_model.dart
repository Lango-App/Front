// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lango/Register/OTP.dart';
import 'package:lango/Register/Register.dart';
import 'package:lango/components/call_api.dart';
import 'package:lango/config/defines.dart';
import 'package:lango/utils/shared_preferenc/perf.dart';
import 'package:lango/utils/strorage/secure.dart';

import '../Choose_Language.dart';

class GetSignupViewModel {
  bool inprogressGetSignup = false;
  Future sendSignupNumer(BuildContext context, String firstname,
      String lastname, String gender, String username, String birthday) {
    int gn = 0;
    if (gender == 'Female') {
      gn = 1;
    } else if (gender == 'Male') {
      gn = 2;
    } else {
      gn = 3;
    }
    return sendRequest(
      context,
      RequestTypes.POST,
      Defines.getsignup,
      {
        'first_name': firstname,
        'last_name': lastname,
        'gender': gn,
        'username': username,
        'birthday': birthday
      },
      onSuccessCallback: (statusCode, data) {
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChooselanguageScreen(
                // userId: data['user_id'].toString(),
                ),
          ),
        );
      },
      onNetworkError: () {},
      onErrorCallback: (statusCode, message) {},
    );
  }
}
