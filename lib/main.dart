import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:whatsappclone/Signup.dart';

import 'package:whatsappclone/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      home: Signup(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/otp', page: () => otp()),
      ],
    );
  }
}
