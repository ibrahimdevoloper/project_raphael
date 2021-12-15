import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/courses.dart';
import 'package:project_raphael/Database/Tables/devices.dart';

@Entity(
  tableName: 'Students',
  foreignKeys: [
    ForeignKey(
        childColumns: ['deviceId'], parentColumns: ['id'], entity: Device),
    ForeignKey(
        childColumns: ['courseId'], parentColumns: ['id'], entity: Course),
  ],
)
class Student {
  @PrimaryKey(autoGenerate: true)
  int? id;

  late String name;
  late String phoneNumber;
  late String email;
  late int deviceId;
  late int courseId;

  Student(
      this.name, this.phoneNumber, this.email, this.deviceId, this.courseId);
}
