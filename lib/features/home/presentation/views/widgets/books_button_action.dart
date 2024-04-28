import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/core/widgets/snackbar.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksButtonAction extends StatelessWidget {
  const BooksButtonAction({
    super.key,
    required this.text,
    required this.bookModel,
  });
  final String text;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () async {
              if (bookModel.accessInfo!.pdf!.isAvailable!) {
                Uri uri = Uri.parse(bookModel.accessInfo!.webReaderLink!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              } else {
                showSnackBar(context, 'Download is not available :(');
              }
            },
            text: text,
            topRight: Radius.zero,
            bottomRight: Radius.zero,
            style: Styles.textStyle18,
          ),
          CustomButton(
            onPressed: () async {
              if (bookModel.volumeInfo?.previewLink != null) {
                Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              } else {
                showSnackBar(context, 'Preview is not available :(');
              }
            },
            text: 'Preview',
            topLeft: Radius.zero,
            bottomLeft: Radius.zero,
            backgroundColor: const Color(0xffEF8262),
            foregroundColor: Colors.white,
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
