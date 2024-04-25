import 'package:bookly/features/search/presentation/views/widgets/custom_text_search_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearchTextField(),
      ],
    );
  }
}
