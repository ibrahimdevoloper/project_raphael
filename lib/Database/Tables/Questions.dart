import 'package:floor/floor.dart';

import 'Couches.dart';

@Entity(
  tableName: 'Courses',
  foreignKeys: [
    ForeignKey(childColumns: ['couchId'], parentColumns: ['id'], entity: Couch)
  ],
)
class Course {
  @PrimaryKey(autoGenerate: true)
  int? id;

  late String name;
  /// we put here both the date and time
  late String startDateTime;
  late String endDateTime;
// late String startHour;
// late String endHour;
  late int couchId;

  Course(this.name, this.startDateTime, this.endDateTime, this.couchId);
}
