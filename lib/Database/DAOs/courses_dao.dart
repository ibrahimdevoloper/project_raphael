import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/courses.dart';

@dao
abstract class CourseDao {
  @Query('SELECT * FROM Courses')
  Future<List<Course>> findAllCourses();

  @Query('SELECT * FROM Courses')
  Stream<List<Course>> findAllCoursesAsStream();

  @insert
  Future<void> insertCourse(Course course);

  //TODO: add update, delete and findByCoucheId
}