import 'package:fitvera/splashscreen.dart';
import 'package:flutter/material.dart';

import 'home/profile/fvrt/timer.dart';
import 'home/profile/fvrt/workout.dart';
import 'home/profile/fvrt/workout_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Fvrt_prep': (context) => Fvrt_prep(),
    "/StopwatchApp": (context) => StopwatchApp(),
        '/Workout_2': (context) => Workout_2(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}