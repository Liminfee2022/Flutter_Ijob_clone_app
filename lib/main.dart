import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ijob_clone_app/loginPage/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: Text(
                  "ijob clone app is being initialzed",
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signatra',
                  ),
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: Text(
                  "An Error has been occurred",
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ijob Clone App',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            primarySwatch: Colors.blue,
          ),
          home: LoginScreen()
        );
      },
    );
  }
}
