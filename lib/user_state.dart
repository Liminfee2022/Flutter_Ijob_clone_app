import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ijob_clone_app/jobs/jobs_screen.dart';
import 'package:ijob_clone_app/loginPage/login_screen.dart';

class UserState extends StatelessWidget {
  const UserState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, userSnapshot) {
        if(userSnapshot.data == null)
        {
          return const LoginScreen();
        } else if(userSnapshot.hasData)
        {
          return const JobsScreen();
        } else if(userSnapshot.hasError) {
          return const Scaffold(
            body: Center(
              child: Text("An error has been occurred. Try again later."),
            ),
          );
        } else if(userSnapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: Text('Something went wrong'),
          ),
        );
        }
    );
  }
}
