import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/you_may_also_like_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              BookDetailsSection(width: width),
              const Expanded(child: Gap(50)),
              const YouMayAlsoLikeSection(),
              const Gap(40)
            ],
          ),
        )
      ],
    );
  }
}
