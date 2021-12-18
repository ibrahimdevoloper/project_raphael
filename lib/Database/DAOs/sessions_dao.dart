import 'package:floor/floor.dart';
import 'package:project_raphael/Database/entities/sessions.dart';

@dao
abstract class SessionDao {
  @Query('SELECT * FROM Sessions')
  Future<List<Session>> findAllSessions();

  @Query('SELECT * FROM Sessions')
  Stream<List<Session>> findAllSessionsAsStream();

  @insert
  Future<void> insertSession(Session session);

//TODO: add update, delete and find byCourseId
}
