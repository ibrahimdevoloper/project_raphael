import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/sessions.dart';
import 'package:project_raphael/Database/Tables/students.dart';

@dao
abstract class StudentDao {
  @Query('SELECT * FROM Students')
  Future<List<Session>> findAllStudents();

  @Query('SELECT * FROM Students')
  Stream<List<Session>> findAllStudentsAsStream();

  @insert
  Future<void> insertStudent(Student student);

//TODO: add update, delete, find byCourseId and  find byDeviceId
}
