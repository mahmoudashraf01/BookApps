import 'package:books_app/features/spalsh/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 43, 45, 66),
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
