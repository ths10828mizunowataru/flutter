import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/app.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

void main() {
  runApp(const MyApp());
}
