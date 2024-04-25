import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: width * 0.25, vertical: 35),
            child: const CustomBookItem(),
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
            overflow: TextOverflow.ellipsis,
          ),
          const Gap(4),
          const Opacity(
              opacity: .7,
              child: Text('Rudyard Kipling', style: Styles.textStyle18)),
          const Gap(14),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const Gap(37),
          const BooksAction(text: "19.99€"),
        ],
      ),
    );
  }
}
