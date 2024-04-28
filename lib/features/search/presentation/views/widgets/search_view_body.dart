import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_book_list_view_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_text_search_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.bookModel});
  final List<BookModel> bookModel;
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
                return BookListViewItem(
                  bookModel: bookModel[index],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
