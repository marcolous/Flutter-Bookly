// ignore_for_file: sized_box_for_whitespace

import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
      child: ListView(
        children: [
          CustomAppBar(
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const FeaturedBooksListView(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Text('hi');
              },
            ),
          )
        ],
      ),
    );
  }
}
