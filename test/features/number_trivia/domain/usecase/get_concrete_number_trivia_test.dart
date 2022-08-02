
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:number_trivia_app/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
  implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia useCase;
  late MockNumberTriviaRepository repository;

  setUp(() {
      repository = MockNumberTriviaRepository();
      useCase = GetConcreteNumberTrivia(repository);
  });

  const tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: "test", number: 1);

  test('should get trivia for the number from the repository', () async {
    when(repository.getConcreteTrivia(1)).thenAnswer((_) async => Right(tNumberTrivia));

    final result = await useCase.execute(number: tNumber);
    
    expect(result, Right(tNumberTrivia));

    verify(repository.getConcreteTrivia(tNumber));
    verifyNoMoreInteractions(repository);
  });

}