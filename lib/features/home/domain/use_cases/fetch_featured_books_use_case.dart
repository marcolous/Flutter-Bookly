import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/repo/home_repo.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
   final HomeRepo homeRepo;

  FeatchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParam {}
