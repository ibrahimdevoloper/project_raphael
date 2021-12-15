import 'package:floor/floor.dart';
import 'package:project_raphael/Database/Tables/devices.dart';

@dao
abstract class DeviceDao {
  @Query('SELECT * FROM Devices')
  Future<List<Device>> findAllDevices();

  @Query('SELECT * FROM Devices')
  Stream<List<Device>> findAllDevicesAsStream();

  @insert
  Future<void> insertDevice(Device device);

//TODO: add update and delete
}
