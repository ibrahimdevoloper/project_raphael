import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/Couches.dart';
import 'package:project_raphael/Database/Tables/Courses.dart';

@dao
abstract class CourseDao {
  @Query('SELECT * FROM Courses')
  Future<List<Couch>> findAllCourses();

  @Query('SELECT * FROM Courses')
  Stream<List<Couch>> findAllCoursesAsStream();

  @insert
  Future<void> insertCourse(Course course);

  //TODO: add update, delete and findByCoucheId
}