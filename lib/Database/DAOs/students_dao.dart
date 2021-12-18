import 'package:floor/floor.dart';
import 'package:project_raphael/Database/entities/students.dart';

@dao
abstract class StudentDao {
  @Query('SELECT * FROM Students')
  Future<List<Student>> findAllStudents();

  @Query('SELECT * FROM Students')
  Stream<List<Student>> findAllStudentsAsStream();

  @insert
  Future<void> insertStudent(Student student);

//TODO: add update, delete, find byCourseId and  find byDeviceId
}
