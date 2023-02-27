import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter('/home/ahmed/Documents/mobile-app/alltest/');
  var dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  var box = await Hive.openBox('mybox');
  runApp(myApp());
}
