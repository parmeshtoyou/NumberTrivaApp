import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia_app/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';

main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 100, text: 'Test text');
  test('should be a subclass of Number trivia entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
}