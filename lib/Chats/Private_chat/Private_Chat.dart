import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lango/Chats/Private_chat/models/private_chat_model.dart';

class PrivateChatScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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

  double getSize(double px) {
    var height = getVerticalSize(px);
    var width = getHorizontalSize(px);
    if (height < width) {
      return height.toInt().toDouble();
    } else {
      return width.toInt().toDouble();
    }
  }

  Widget buildChatMessages(PrivateChatModel model) {
    if (model.isSender == true) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            margin: EdgeInsets.only(left: 100, right: 44, top: 20),
            padding: EdgeInsets.only(left: 14, top: 16, bottom: 16, right: 20),
            decoration: BoxDecoration(color: Color(0xFF3657ff), boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(5.0, 5.0),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ]).copyWith(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(
                    6,
                  ),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                bottomRight: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
              ),
            ),
            child: Text(
              model.msg,
              maxLines: null,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFFffffff),
                fontSize: getSize(14),
                fontFamily: 'Product Sans Medium',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      );
    } else if (model.type == "Message") {
      return Padding(
        padding: EdgeInsets.only(
          left: 12,
          top: 24,
          right: 60,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              color: Color(0xFFffffff),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFFffffff),
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
              ),
              child: Container(
                height: getSize(
                  32,
                ),
                width: getSize(
                  32,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  border: Border.all(
                    color: Color(0xFFffffff),
                    width: getHorizontalSize(
                      1,
                    ),
                    // strokeAlign: StrokeAlign.outside,
                  ),
                ).copyWith(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      16,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16,
                            ),
                          ),
                          child: Container(
                            height: height,
                            width: size.width,
                            child: SvgPicture.asset(
                              'assets/images/img_user.svg',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  left: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        6,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                    bottomLeft: Radius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                    bottomRight: Radius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                    ),
                    padding: EdgeInsets.only(
                      left: 24,
                      top: 16,
                      bottom: 16,
                    ),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(5.0, 5.0),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ]).copyWith(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            6,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            16,
                          ),
                        ),
                        bottomLeft: Radius.circular(
                          getHorizontalSize(
                            16,
                          ),
                        ),
                        bottomRight: Radius.circular(
                          getHorizontalSize(
                            16,
                          ),
                        ),
                      ),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 400,
                      ),
                      margin: EdgeInsets.only(
                        top: 2,
                        right: 22,
                      ),
                      child: Text(
                        model.msg,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF141416),
                          fontSize: getSize(14),
                          fontFamily: 'Product Sans Medium',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (model.type == "Media") {
      return Container();
    } else {
      return SizedBox();
    }
  }

  List<PrivateChatModel> getUserChats() {
    List<PrivateChatModel> mList = [];
    PrivateChatModel model1 = PrivateChatModel();
    model1.msg =
        "Minim dolor amet nulla laboris enim dolore consequat. Minim dolo...";
    model1.duration = "7.30 PM";
    model1.type = "Message";
    model1.isSender = true;

    PrivateChatModel model2 = PrivateChatModel();
    model2.msg =
        "Minim dolor amet nulla laboris enim dolore consequat. Minim dolo...";
    model2.type = "Message";
    model2.duration = "7.30 PM";

    PrivateChatModel model3 = PrivateChatModel();
    model3.msg = "Minim";
    model3.type = "Message";
    model3.duration = "7.30 PM";

    mList.add(model1);
    mList.add(model2);
    mList.add(model3);

    return mList;
  }

  String mytext = "";

  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 100),
              child: ListView.builder(
                itemBuilder: (context, i) =>
                    buildChatMessages(getUserChats()[i]),
                itemCount: getUserChats().length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              margin: EdgeInsets.only(
                top: 32,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(5.0, 5.0),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ]).copyWith(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(
                  right: 12,
                  left: 12,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFf4f5f6),
                ).copyWith(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      9,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          top: 5,
                          bottom: 1,
                          right: 20,
                        ),
                        child: TextField(
                          onChanged: (text) {
                            mytext = text;
                          },
                          decoration: InputDecoration(
                            hintText: "Reply comment",
                            border: InputBorder.none,
                          ),
                          controller: fieldText,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: _pickFile,
                      icon: SvgPicture.asset(
                          'assets/images/img_trash_gray_200.svg'),
                    ),
                    IconButton(
                        onPressed: () {
                          clearText();
                        },
                        icon: SvgPicture.asset(
                            'assets/images/img_arrowup_white_a700.svg')),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

void _pickFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
}
