import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/Couches.dart';
import 'package:project_raphael/Database/Tables/Courses.dart';

@dao
abstract class SessionDao {
  @Query('SELECT * FROM Sessions')
  Future<List<Couch>> findAllSessions();

  @Query('SELECT * FROM Sessions')
  Stream<List<Couch>> findAllSessionsAsStream();

  @insert
  Future<void> insertCourse(Course course);

  //TODO: add update, delete and find byCourseId
}