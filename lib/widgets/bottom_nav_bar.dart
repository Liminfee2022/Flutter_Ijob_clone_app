import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ijob_clone_app/jobs/jobs_screen.dart';
import 'package:ijob_clone_app/jobs/upload_job.dart';
import 'package:ijob_clone_app/search/profile_screen.dart';
import 'package:ijob_clone_app/search/search_companies.dart';

class BottomNavigationBarForApp extends StatelessWidget {
  final int indexNum;
  const BottomNavigationBarForApp({ Key? key, required this.indexNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.deepOrange.shade400,
      backgroundColor: Colors.blueAccent,
      buttonBackgroundColor: Colors.deepOrange.shade300,
      height: 50,
      index: indexNum,
      items: const [
        Icon(
          Icons.list,
          size: 19,
          color: Colors.black,
        ),
        Icon(
          Icons.search,
          size: 19,
          color: Colors.black,
        ),
        Icon(
          Icons.add,
          size: 19,
          color: Colors.black,
        ),
        Icon(
          Icons.person_pin,
          size: 19,
          color: Colors.black,
        ),
      ],
      animationDuration: const Duration(microseconds: 300),
      animationCurve: Curves.bounceInOut,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const JobsScreen()));
        }
         else if (index == 1) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const AllWorksScreen()));
        }
         else if (index == 2) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const UploadJobNow()));
        }
         else if (index == 3) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
        }
      },
    );
  }
}
