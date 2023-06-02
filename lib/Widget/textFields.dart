// ignore_for_file: file_names, override_on_non_overriding_member, prefer_const_constructors, deprecated_member_use

import 'package:lango/Constance/theme.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String lableText;
  final TextStyle lableStyle;
  final Widget suffixIcon;
  final TextInputType keyboardtype;
  final bool hideTextfild;
  final VoidCallback click;

  const MyTextField({
    super.key,
    required this.lableText,
    required this.suffixIcon,
    this.keyboardtype = TextInputType.text,
    this.hideTextfild = false,
    this.lableStyle = const TextStyle(
      fontFamily: 'ProductSans',
    ),
    required this.click,
    required TextEditingController controller,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        widget.click();
      },
      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
      decoration: InputDecoration(
        labelText: widget.lableText,
        suffixIcon: widget.suffixIcon,
        border: InputBorder.none,
        labelStyle: widget.lableStyle,

        //labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
        //fontSize: 14,
        //fontFamily: 'ProductSans',

        //),
      ),
    );
  }
}
