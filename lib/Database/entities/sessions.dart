import 'package:floor/floor.dart';
import 'package:project_raphael/Database/entities/courses.dart';

@Entity(
  tableName: 'Sessions',
  foreignKeys: [
    ForeignKey(childColumns: ['courseId'], parentColumns: ['id'], entity: Course)
  ],
)
class Session {
  @PrimaryKey(autoGenerate: true)
  int? id;

  late  String title;
  late String description;
  late String filePath;
  late int courseId;

  Session(this.title, this.description, this.filePath, this.courseId);
}