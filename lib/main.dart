import 'package:firebase_core/firebase_core.dart';
import 'package:fitvera/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'home/profile/fvrt/timer.dart';
import 'home/profile/fvrt/workout.dart';
import 'home/profile/fvrt/workout_2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final storage = new FlutterSecureStorage();


  Future<bool> checkLoginStatus() async {
    String? value = await storage.read(key: "uid");
    if(value == null){
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: _initialization,
      builder: (context,snapshot){
        // check erros
        if(snapshot.hasError){
          print("Something went wrong");
        }
        // once completed show application
        if(snapshot.connectionState == ConnectionState.done){
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
        return CircularProgressIndicator();

      },);

  }
}