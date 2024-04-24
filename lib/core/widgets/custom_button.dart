import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.topLeft = const Radius.circular(20),
    this.topRight = const Radius.circular(20),
    this.bottomLeft = const Radius.circular(20),
    this.bottomRight = const Radius.circular(20),
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.style,
    required this.text,
  });
  final Radius topLeft;
  final Radius topRight;
  final Radius bottomLeft;
  final Radius bottomRight;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? style;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(150, 48),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: topLeft,
              topRight: topRight,
              bottomLeft: bottomLeft,
              bottomRight: bottomRight,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
