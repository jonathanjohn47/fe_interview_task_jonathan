import 'package:flutter/material.dart';

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
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor ?? Colors.black,
          width: borderWidth ?? 1,
        ),
      ),
      child: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
    );
  }
}
