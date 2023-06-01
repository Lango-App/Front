import 'package:lango/Chats/Private_chat/Private_Chat.dart';

import '../Chats/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';
// import 'package:lango/Chats/Private_Chat.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController groupController = TextEditingController();

  Size size = WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;

  double getHorizontalSize(double px) {
    return ((px * size.width) / 390);
  }

  get height {
    num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .viewPadding
        .top;
    num bottomBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .viewPadding
        .bottom;
    num screenHeight = size.height - statusBar - bottomBar;
    return screenHeight;
  }

  double getVerticalSize(double px) {
    return ((px * height) / 844);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: getHorizontalSize(342),
          margin: EdgeInsets.only(left: 24, right: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getHorizontalSize(16))),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: getVerticalSize(4));
                },
                itemCount: 9,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivateChatScreen()));
                      },
                      child: ChatItemWidget());
                })
          ])),
    ));
  }
}
