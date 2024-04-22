// ignore_for_file: sized_box_for_whitespace

import 'package:bookly/core/utils/assets.dart';
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
          child: Text('Best Seller', style: Styles.textStyle18),
        ),
        const Gap(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 10),
              //physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BestSellerListViewItem();
              },
            ),
          ),
        )
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'title',
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text('auther'),
                  Row(
                    children: [
                      const Text('20.00 €'),
                      const Gap(50),
                      Icon(Icons.star_rate_rounded, color: Colors.yellow[700]),
                      const Text('4.8'),
                      const Gap(10),
                      const Text('(2200)'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
