import 'package:flutter/material.dart';

import 'injection/injection.dart';
import 'my_app.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(const MyApp());
}
