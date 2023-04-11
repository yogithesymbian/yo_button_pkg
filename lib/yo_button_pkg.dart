library yo_button_pkg;

import 'package:flutter/material.dart';

class YoButton extends StatelessWidget {
  Function()? yoPress;
  final Widget? yoChildWidget;
  final Color? yoBGColor;
  var style;
  YoButton(
      {Key? key,
      @required this.yoPress,
      this.yoChildWidget,
      this.style,
      this.yoBGColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: yoPress,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          primary: Colors.white,
          backgroundColor: yoBGColor ?? const Color(0xFF2574FF),
          elevation: 9.0,
          textStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
        child: yoChildWidget ?? const SizedBox());
  }
}
