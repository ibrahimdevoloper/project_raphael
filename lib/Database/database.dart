// database.dart

// required package imports

import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/Answers.dart';
import 'package:project_raphael/Database/Tables/Couches.dart';
import 'package:project_raphael/Database/Tables/Courses.dart';
import 'package:project_raphael/Database/Tables/Devices.dart';
import 'package:project_raphael/Database/Tables/Questions.dart';
import 'package:project_raphael/Database/Tables/Sessions.dart';
import 'package:project_raphael/Database/Tables/Students.dart';
import 'package:project_raphael/Database/Tables/students_answers.dart';

import 'DAOs/answers_dao.dart';
import 'DAOs/couches_dao.dart';
import 'DAOs/courses_dao.dart';
import 'DAOs/devices_dao.dart';
import 'DAOs/questions_dao.dart';
import 'DAOs/sessions_dao.dart';
import 'DAOs/students_answers_dao.dart';
import 'DAOs/students_dao.dart';

// part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [
  Answer,
  Couch,
  Course,
  Device,
  Question,
  Session,
  Student,
  StudentsAnswer,
])
abstract class AppDatabase extends FloorDatabase {
  AnswerDao get answerDao;

  CouchDao get couchDao;

  CourseDao get courseDao;

  DeviceDao get deviceDao;

  QuestionDao get questionDao;

  SessionDao get sessionDao;

  StudentDao get studentDao;

  StudentsAnswerDao get studentsAnswerDao;
}
