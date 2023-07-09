import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorstar/materials/screens.dart';
import 'package:motorstar/pages/login.dart';

import 'api/binding/controller_binding.dart';

void main() {
  GetXBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      getPages: getPages,
    );
  }
}
