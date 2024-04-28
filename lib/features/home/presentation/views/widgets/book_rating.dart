import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final dynamic rating;
  final dynamic count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Gap(3),
        Icon(Icons.star_rate_rounded, color: Colors.yellow[700]),
        const Gap(6),
        Text('$rating'),
        const Gap(10),
        Opacity(
          opacity: .5,
          child: Text('($count)'),
        ),
      ],
    );
  }
}
