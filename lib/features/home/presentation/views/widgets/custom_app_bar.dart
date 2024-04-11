import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.icon, this.color, required this.onPressed});
  final Icon icon;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(AssetsData.logo),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          color: color,
          onPressed: onPressed,
        ),
      ],
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key, required this.icon, this.color, required this.onPressed});
  final Icon icon;
  final Color? color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: 32,
    );
  }
}
