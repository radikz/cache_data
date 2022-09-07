import 'package:hive/hive.dart';

part 'cache.g.dart';

@HiveType(typeId: 0)
class Cache {
  @HiveField(0)
  final String url;

  @HiveField(1)
  final String data;

  @HiveField(2)
  final DateTime time;

  @HiveField(3)
  final Duration duration;

  const Cache({
    required this.url,
    required this.data,
    required this.time,
    required this.duration,
  });

  @override
  String toString() {
    return 'Cache{url: $url, data: $data, time: $time, duration: $duration}';
  }
}
