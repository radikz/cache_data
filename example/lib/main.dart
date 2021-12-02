import 'package:cache_data/cache_data.dart';

import 'homeview.dart';
import 'package:flutter/material.dart';

import 'main.mapper.g.dart' show initializeJsonMapper;

import 'package:dart_json_mapper_flutter/dart_json_mapper_flutter.dart' show flutterAdapter;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.init();
  initializeJsonMapper(adapters: [flutterAdapter]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: HomeView());
  }
}
