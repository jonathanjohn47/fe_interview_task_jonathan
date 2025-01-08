import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconBtn extends StatelessWidget {
  const IconBtn(
      {super.key,
      required this.child,
      required this.onPressed,
      this.backgroundColor,
      this.foregroundColor,
      this.borderColor,
      this.borderWidth});

  final Widget child;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressed();
      },
      icon: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        foregroundColor: MaterialStateProperty.all(foregroundColor),
        shape: MaterialStateProperty.all(CircleBorder(
            side: BorderSide(
                color: borderColor ?? Colors.transparent,
                width: borderWidth ?? 2.sp))),
      ),
    );
  }
}
