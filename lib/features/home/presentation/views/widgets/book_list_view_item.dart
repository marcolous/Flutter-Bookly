import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 0.6,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.test),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFine),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Opacity(opacity: .7, child: Text('auther')),
                    Row(
                      children: [
                        Text(
                          '20.00 €',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const BookRating(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
