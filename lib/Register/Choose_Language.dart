import 'package:lango/Constance/constance.dart';
import 'package:lango/Constance/theme.dart';
import 'package:lango/Dashboard/Dashboard.dart';
import 'package:lango/Widget/textField_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

class ChooselanguageScreen extends StatefulWidget {
  const ChooselanguageScreen({super.key});

  @override
  State<ChooselanguageScreen> createState() => ChooseLanguageState();
}

class ChooseLanguageState extends State<ChooselanguageScreen> {
  RxString Nativelanguage = "Native language".obs;
  RxString Learnlanguage = "Learn language".obs;
  TextEditingController languageNative = TextEditingController();
  TextEditingController languageLearn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).padding.left + 25,
          right: MediaQuery.of(context).padding.right + 25,
          top: MediaQuery.of(context).padding.top + 50,
          bottom: MediaQuery.of(context).padding.bottom + 27,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                ConstanceData.lang,
                height: 100,
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Text(
              'Choose language',
              style: TextStyle(
                color: Color(0xFF141416),
                fontFamily: 'ProductSans',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFCFCFD),
                border: Border.all(
                  color: Color(0xFFEBEDF1),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Obx(
                  () => MyTextField(
                  lableText: 'Native language',
                  lableStyle: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 14,
                    color: Color(0xFF7F8697),
                  ),
                  suffixIcon: IconButton(
                    icon: AppTheme.isLightTheme
                        ? Image.asset(
                            ConstanceData.p11,
                            height: 25,
                          )
                        : Image.asset(
                            ConstanceData.dp11,
                            height: 25,
                          ),
                    onPressed: () {},
                  ),
                  controller: languageNative,
                  click: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return ListNativelangoWidget(
                          NativeObx: Nativelanguage,
                          controller: languageNative,
                        );
                      },
                    );
                  },
                ),
              ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFCFCFD),
                border: Border.all(
                  color: Color(0xFFEBEDF1),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Obx(
                  () => MyTextField(
                  lableText: 'Learn language',
                  lableStyle: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 14,
                    color: Color(0xFF7F8697),
                  ),
                  suffixIcon: IconButton(
                    icon: AppTheme.isLightTheme
                        ? Image.asset(
                            ConstanceData.p11,
                            height: 25,
                          )
                        : Image.asset(
                            ConstanceData.dp11,
                            height: 25,
                          ),
                    onPressed: () {},
                  ),
                  controller: languageLearn,
                  click: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return ListLearnlangoWidget(
                          LearnObx: Learnlanguage,
                          controller: languageLearn,
                        );
                      },
                    );
                  },
                ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Dashboard(),
                    ),
                  );
                },
                child: Container(
                  height: 48,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Color(0xFF3757FF),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontFamily: 'ProductSans',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget com(
    String img,
    String tex,
  ) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              img,
              height: 25,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              tex,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Spacer(),
            Image.asset(
              AppTheme.isLightTheme ? ConstanceData.s4 : ConstanceData.s4,
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class ListNativelangoWidget extends StatefulWidget {
  final RxString NativeObx;
  final TextEditingController controller;

  const ListNativelangoWidget({
    required this.NativeObx,
    required this.controller,
  });

  @override
  State<ListNativelangoWidget> createState() => _ListNativelangoWidgetState();
}

class _ListNativelangoWidgetState extends State<ListNativelangoWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          padding: EdgeInsets.only(top: 130, bottom: 0),
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppTheme.isLightTheme ? Color(0xFFF4F5F6) : Colors.black,
                border: Border.all(color: HexColor("#EBEBF0")),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(8.0),
                  topRight: const Radius.circular(8.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Native language',
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF141416),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 60,
                    child: RadioListTile(
                        activeColor: Color(0xFF3757FF),
                        title: Text('Persian'),
                        value: 'Persian',
                        groupValue: widget.NativeObx.value!,
                        onChanged: (value) {
                          setState(() {
                            widget.NativeObx.value = value.toString();
                            widget.controller.text = value.toString();
                            Navigator.of(context).pop();
                            //print(Nativelanguage);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 60,
                    child: RadioListTile(
                        activeColor: Color(0xFF3757FF),
                        title: Text("English"),
                        value: "English",
                        groupValue: widget.NativeObx.value!,
                        onChanged: (value) {
                          setState(() {
                            widget.NativeObx.value = value.toString();
                            widget.controller.text = value.toString();
                            Navigator.of(context).pop();
                            //print(Nativelanguage);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 60,
                    child: RadioListTile(
                        activeColor: Color(0xFF3757FF),
                        title: Text("French"),
                        value: "French",
                        groupValue: widget.NativeObx.value!,
                        onChanged: (value) {
                          setState(() {
                            widget.NativeObx.value = value.toString();
                            widget.controller.text = value.toString();
                            Navigator.of(context).pop();
                            //print(Nativelanguage);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        );
  }
}

class ListLearnlangoWidget extends StatefulWidget {
  final RxString LearnObx;
  final TextEditingController controller;

  const ListLearnlangoWidget({
    required this.LearnObx,
    required this.controller,
  });

  @override
  State<ListLearnlangoWidget> createState() => _ListLearnlangoWidgetState();
}

class _ListLearnlangoWidgetState extends State<ListLearnlangoWidget> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView(
          padding: EdgeInsets.only(top: 250, bottom: 0),
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppTheme.isLightTheme ? Color(0xFFF4F5F6) : Colors.black,
                border: Border.all(color: HexColor("#EBEBF0")),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(8.0),
                  topRight: const Radius.circular(8.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Learn language',
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF141416),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 60,
                    child: RadioListTile(
                        activeColor: Color(0xFF3757FF),
                        title: Text('English'),
                        value: 'English',
                        groupValue: widget.LearnObx.value!,
                        onChanged: (value) {
                          setState(() {
                            widget.LearnObx.value = value.toString();
                            widget.controller.text = value.toString();
                            Navigator.of(context).pop();
                            //print(Nativelanguage);
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
