import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Gap(3),
        Icon(Icons.star_rate_rounded, color: Colors.yellow[700]),
        const Gap(6),
        const Text('4.8'),
        const Gap(10),
        const Opacity(opacity: .5, child: Text('(2200)')),
      ],
    );
  }
}
