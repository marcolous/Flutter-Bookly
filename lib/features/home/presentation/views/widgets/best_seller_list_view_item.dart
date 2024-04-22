import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                  Text(
                    'title',
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text('auther'),
                  Row(
                    children: [
                      Text(
                        '20.00 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Gap(3),
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
