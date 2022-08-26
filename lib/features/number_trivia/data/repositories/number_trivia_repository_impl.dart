import 'package:dartz/dartz.dart';
import 'package:number_trivia_app/core/error/failures.dart';
import 'package:number_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl extends NumberTriviaRepository {

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteTrivia(int number) {
    // TODO: implement getConcreteTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomTrivia() {
    // TODO: implement getRandomTrivia
    throw UnimplementedError();
  }

}