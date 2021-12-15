import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/couches.dart';

@dao
abstract class CouchDao {
  @Query('SELECT * FROM Couches')
  Future<List<Couch>> findAllCouches();

  @Query('SELECT * FROM Couches')
  Stream<List<Couch>> findAllCouchesAsStream();

  @insert
  Future<void> insertCouch(Couch couch);

  //TODO: add update and delete
}