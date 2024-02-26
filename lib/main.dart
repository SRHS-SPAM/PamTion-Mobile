import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pamtion_mobile/screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}
