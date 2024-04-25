import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class YouMayAlsoLikeSection extends StatelessWidget {
  const YouMayAlsoLikeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "You may also like",
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const Gap(15),
        const FeaturedBooksListView(
          height: .17,
        ),
      ],
    );
  }
}
