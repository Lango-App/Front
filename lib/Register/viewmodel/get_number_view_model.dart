// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lango/Register/OTP.dart';
import 'package:lango/Register/Register.dart';
import 'package:lango/components/call_api.dart';
import 'package:lango/config/defines.dart';
import 'package:lango/utils/shared_preferenc/perf.dart';
import 'package:lango/utils/strorage/secure.dart';

class GetNumberViewModel {
  bool inprogressGetNumber = false;
  Future sendPhoneNumer(BuildContext context, String number) {
    return sendRequest(
      context,
      RequestTypes.POST,
      Defines.getPhoneNumber,
      {'phone_number': number},
      onSuccessCallback: (statusCode, data) {
        inprogressGetNumber = false;
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => OtpChecking(
              userId: data['user_id'].toString(),
            ),
          ),
        );
      },
      onNetworkError: () {},
      onErrorCallback: (statusCode, message) {},
    );
  }

  Future sendOtp(BuildContext context, String code, String userId) {
    return sendRequest(
      context,
      RequestTypes.POST,
      Defines.checkOtp,
      {'user_id': userId, 'code': code},
      onSuccessCallback: (statusCode, data) async {
        await SimpleUserPreferences.setToken(data['token']);
        await SimpleUserStorage().setToken(data['token']);
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RegisterScreen(
              userId: data['user_id'].toString(),
            ),
          ),
        );
      },
    );
  }
}
