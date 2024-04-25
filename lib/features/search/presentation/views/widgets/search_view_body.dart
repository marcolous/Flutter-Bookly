import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_text_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSearchTextField(),
        const Gap(10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 10),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BookListViewItem();
              },
            ),
          ),
        )
      ],
    );
  }
}
