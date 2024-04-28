import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
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
    required this.bookModel,
  });

  final double width;
  final BookModel bookModel;

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
            child: CustomBookItem(
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? ' '),
          ),
          Text(
            bookModel.volumeInfo!.title!,
            style: Styles.textStyle30,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          const Gap(4),
          Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo!.authors![0],
              style: Styles.textStyle18,
            ),
          ),
          const Gap(14),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            count: bookModel.volumeInfo?.ratingsCount ?? '0',
            rating: bookModel.volumeInfo?.averageRating ?? '0',
          ),
          const Gap(37),
          const BooksAction(text: "Free"),
        ],
      ),
    );
  }
}
