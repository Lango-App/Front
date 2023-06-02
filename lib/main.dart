// ignore_for_file: deprecated_member_use, non_constant_identifier_names, prefer_const_constructors, constant_identifier_names, unused_import
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/Splash/Splash.dart';
import 'package:lango/Splash/Onboard.dart';
import 'package:lango/Dashboard/Dashboard.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/Register/Choose_Language.dart';
import 'package:lango/Register/Get_Number.dart';
import 'package:lango/Register/OTP.dart';
import 'package:lango/Register/Register.dart';
import 'package:lango/Register/Settings.dart';
import 'package:lango/Register/Choose_Language.dart';
import 'package:lango/Constance/Constance.dart';
import 'package:lango/Feed/Feed.dart';
import 'package:lango/Feed/Create_Post.dart';
import 'package:lango/Chats/Chat_Dashboard.dart';
import 'package:lango/utils/shared_preferenc/perf.dart';
import 'package:lango/utils/strorage/secure.dart';
import 'package:lango/Chats/Private_chat/Private_Chat.dart';
import 'package:lango/Chats/Chats/Chats.dart';
import 'package:lango/Chats/Private_chat/models/private_chat_model.dart';
import "package:lango/Register/viewmodel/get_register_view_model.dart";
import "package:lango/Register/viewmodel/get_number_view_model.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SimpleUserPreferences.init();
  await SimpleUserStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
