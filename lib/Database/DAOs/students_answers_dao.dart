import 'package:floor/floor.dart';
import 'package:project_raphael/Database/entities/students_answers.dart';

@dao
abstract class StudentsAnswerDao {
  @Query('SELECT * FROM Students_Answers')
  Future<List<StudentsAnswer>> findAllStudentsAnswer();

  @Query('SELECT * FROM Students_Answers')
  Stream<List<StudentsAnswer>> findAllStudentsAnswerAsStream();

  @insert
  Future<void> insertStudentsAnswer(StudentsAnswer studentsAnswer);

//TODO: add update, delete, find studentId and  find answerId
}
