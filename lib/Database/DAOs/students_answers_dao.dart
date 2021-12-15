import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/sessions.dart';
import 'package:project_raphael/Database/Tables/students_answers.dart';

@dao
abstract class StudentsAnswerDao {
  @Query('SELECT * FROM Students_Answers')
  Future<List<Session>> findAllStudentsAnswer();

  @Query('SELECT * FROM Students_Answers')
  Stream<List<Session>> findAllStudentsAnswerAsStream();

  @insert
  Future<void> insertStudentsAnswer(StudentsAnswer studentsAnswer);

//TODO: add update, delete, find studentId and  find answerId
}
