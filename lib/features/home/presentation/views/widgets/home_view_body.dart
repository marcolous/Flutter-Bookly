// ignore_for_file: sized_box_for_whitespace

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_book_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics:
          BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(
                height: .3,
              ),
              Gap(20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              Gap(20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewestBooksListView(),
        )
      ],
    );
  }
}
