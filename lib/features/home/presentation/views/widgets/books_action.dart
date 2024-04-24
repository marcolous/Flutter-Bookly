import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: text,
          topRight: Radius.zero,
          bottomRight: Radius.zero,
          style: Styles.textStyle18,
        ),
        const CustomButton(
          text: 'Free preview',
          topLeft: Radius.zero,
          bottomLeft: Radius.zero,
          backgroundColor: Color(0xffEF8262),
          foregroundColor: Colors.white,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
