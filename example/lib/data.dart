import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class Data {
  int userId;
  int id;
  String title;

  Data({
    required this.userId,
    required this.id,
    required this.title,
  });
}