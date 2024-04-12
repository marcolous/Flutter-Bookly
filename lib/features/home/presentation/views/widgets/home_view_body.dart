// ignore_for_file: sized_box_for_whitespace

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomAppBar(),
        const FeaturedBooksListView(),
        const Gap(20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text('Best Seller', style: Styles.titleMedium),
        ),
        const Gap(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Text('hi');
              },
            ),
          ),
        )
      ],
    );
  }
}
