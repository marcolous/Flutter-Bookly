class BookEntity {
  final String? image, title, auther, bookId;
  final num? price, rating;

  BookEntity(
      {required this.image,
      required this.title,
      required this.auther,
      required this.bookId,
      required this.price,
      required this.rating});
}
