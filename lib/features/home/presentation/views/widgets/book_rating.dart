import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Gap(3),
        Icon(Icons.star_rate_rounded, color: Colors.yellow[700]),
        const Text('4.8'),
        const Gap(10),
        const Text('(2200)'),
      ],
    );
  }
}
