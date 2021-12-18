import 'package:floor/floor.dart';
import 'package:project_raphael/Database/entities/answers.dart';

@dao
abstract class AnswerDao {
  @Query('SELECT * FROM Answers')
  Future<List<Answer>> findAllAnswers();

  @Query('SELECT * FROM Answers')
  Stream<List<Answer>> findAllAnswersAsStream();

  @insert
  Future<void> insertAnswer(Answer answer);

//TODO: add update, delete and find byQuestionId
}
