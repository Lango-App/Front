import 'dart:convert';
import 'dart:developer';
import 'package:dio/io.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lango/Register/Get_Number.dart';
import 'package:lango/config/defines.dart';
import 'package:lango/utils/shared_preferenc/perf.dart';

enum RequestTypes { POST, GET, DEL, PUT, PATCH }

Future sendRequest(
  context,
  RequestTypes type,
  String url,
  dynamic body, {
  bool checkResponse = true,
  Function? onError,
  bool useBaseUrl = true,
  customHeader,
  Function(int? statusCode, String message)? onErrorCallback,
  Function(
    int? statusCode,
    Map data,
  )?
      onSuccessCallback,
  Function()? onNetworkError,
  Function(int? statusCode, Map data)? onOtherStatusError,
}) async {
  String token = SimpleUserPreferences.getToken() ?? "";
  Map<String, String> headers = customHeader ??
      {
        'Accept': 'application/json',
        'Authorization': "Bearer $token",
      };
  print("token");
  print(token);
  // print(url);
  String url_request = useBaseUrl ? (Defines.baseUrl + url) : url;
  var dio = Dio();

  var options = Options(
      followRedirects: false,
      validateStatus: (status) {
        return (status! < 600);
      },
      headers: headers);
  try {
    Response response;
    switch (type) {
      case RequestTypes.POST:
        response = await dio.post(
          url_request,
          options: options,
          data: body,
        );
        break;
      case RequestTypes.GET:
        response = await dio.get(
          url_request,
          options: options,
          queryParameters: body,
        );
        break;
      case RequestTypes.DEL:
        response = await dio.delete(url_request, options: options, data: body);
        break;
      case RequestTypes.PUT:
        response = await dio.put(
          url_request,
          options: options,
          data: body,
        );
        break;
      case RequestTypes.PATCH:
        response = await dio.patch(
          url_request,
          options: options,
          data: body,
        );
        break;
    }
    print('uri_request : ' + url_request);
    // print();
    try {
      body = body.toJson();
    } catch (e) {}
    log('body : ' + json.encode(body));
    print('statusCode : ' + response.statusCode.toString());
    String message = '';
    try {
      log('response1 : ' + json.encode(response.data));
      // message = response.data['message'];
    } catch (e) {
      log('response : ' + response.data.toString());
    }
    if (response.statusCode == 401) {
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // await prefs.clear();
      showErrorToken(context);
      sendRequest(
        context,
        RequestTypes.POST,
        Defines.refresh,
        {"": ""},
        onSuccessCallback: (statusCode, data) {
          SimpleUserPreferences.setToken(data['token']);
        },
        onErrorCallback: (statusCode, message) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetnumberScreen(),
            )),
        onNetworkError: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetnumberScreen(),
            )),
        onOtherStatusError: (statusCode, data) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetnumberScreen(),
            )),
      );

      return onErrorCallback!(response.statusCode, message);
    } else {
      if (response.requestOptions.data is FormData) {
        // debugPrint((response.requestOptions.data as FormData).fields.toString());
      } else {
        // print(response.requestOptions.data.toString());
      }
      // print(response.requestOptions.uri.toString());
      // print(response.toString());
      if (checkResponse) {
        if ((response.statusCode! / 100).round() == 2) {
          return onSuccessCallback!(response.statusCode, response.data);
        } else {
          if (onError != null) {
            return onError();
          }

          onOtherStatusError!(response.statusCode, response.data);
          // ScaffoldMessenger.of(NavigationService.navigatorKey.currentContext!,).showSnackBar(
          //     SnackBar(
          //       content:AutoSizeText(message, textAlign: TextAlign.center),
          //       backgroundColor: Theme.of(NavigationService.navigatorKey.currentContext!).errorColor,
          //     ),
          //   );
        }
      } else {
        // function(response);
      }
    }
  } catch (error) {
    if (onError != null) {
      onError();
    }
    print('error_try_request= ' + error.toString());
    // return onOtherStatusErrorGlobal();
  }
}

// void showErrorNetwork(context) {
//   // showToastWidget(
//   //     Container(
//   //       child: ToastWidget(
//   //         hasDescription: true,
//   //         toastLeftElems: ToastLeftElems.none,
//   //         toastActions: ToastActions.none,
//   //         autoResize: true,
//   //         hasRightIcon: false,
//   //         description: 'please check network',
//   //         title: 'Error',
//   //         height: 200,
//   //         backColor: Colors.red.shade300,
//   //       ),
//   //     ),
//   //     context: context,
//   //     alignment: Alignment.topCenter,
//   //     duration: Duration(seconds: 7));
// }

void showErrorToken(context) {
  // showToastWidget(
  //     Container(
  //       child: ToastWidget(
  //         hasDescription: true,
  //         toastLeftElems: ToastLeftElems.none,
  //         toastActions: ToastActions.none,
  //         autoResize: true,
  //         hasRightIcon: false,
  //         description: 'token expired',
  //         title: 'Error',
  //         height: 200,
  //         backColor: Colors.red.shade300,
  //       ),
  //     ),
  //     context: context,
  //     alignment: Alignment.topCenter,
  //     duration: Duration(seconds: 7));
}

void showSuccesMessage(context, description) {
  // showToastWidget(
  //     Container(
  //       child: ToastWidget(
  //         hasDescription: true,
  //         toastLeftElems: ToastLeftElems.none,
  //         toastActions: ToastActions.none,
  //         autoResize: true,
  //         hasRightIcon: false,
  //         description: description,
  //         title: 'Success',
  //         height: 200,
  //         backColor: Colors.green.shade300,
  //       ),
  //     ),
  //     context: context,
  //     alignment: Alignment.topCenter,
  //     duration: Duration(seconds: 7));
}

void showErrorMessage(
  context,
  description,
) {
  // showToastWidget(
  //     Container(
  //       child: ToastWidget(
  //         hasDescription: true,
  //         toastLeftElems: ToastLeftElems.none,
  //         toastActions: ToastActions.none,
  //         autoResize: true,
  //         hasRightIcon: false,
  //         description: description,
  //         title: 'Error',
  //         height: 200,
  //         backColor: Colors.red.shade300,
  //       ),
  //     ),
  //     context: context,
  //     alignment: Alignment.topCenter,
  //     duration: Duration(seconds: 7));
}

void showErrorMessageRotated(
  context,
  description,
) {
  // showToastWidget(
  //     RotatedBox(
  //         quarterTurns: -3,
  //         child: Container(
  //           child: ToastWidget(
  //             hasDescription: true,
  //             toastLeftElems: ToastLeftElems.none,
  //             toastActions: ToastActions.none,
  //             autoResize: true,
  //             hasRightIcon: false,
  //             description: description,
  //             title: 'Error',
  //             height: 200,
  //             backColor: Colors.red.shade300,
  //           ),
  //         )),
  //     context: context,
  //     alignment: Alignment.topCenter,
  //     duration: Duration(seconds: 7));
}
