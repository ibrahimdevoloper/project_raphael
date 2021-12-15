import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/questions.dart';

@dao
abstract class QuestionDao {
  @Query('SELECT * FROM Questions')
  Future<List<Question>> findAllQuestions();

  @Query('SELECT * FROM Questions')
  Stream<List<Question>> findAllQuestionsAsStream();

  @insert
  Future<void> insertQuestion(Question question);

//TODO: add update, delete and find bySessionId
}
