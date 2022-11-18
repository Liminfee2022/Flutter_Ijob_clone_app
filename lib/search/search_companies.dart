import 'package:flutter/material.dart';
import 'package:ijob_clone_app/widgets/bottom_nav_bar.dart';

class AllWorksScreen extends StatefulWidget {
  const AllWorksScreen({Key? key}) : super(key: key);

  @override
  State<AllWorksScreen> createState() => _AllWorksScreenState();
}

class _AllWorksScreenState extends State<AllWorksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepOrange.shade300, Colors.blueAccent],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [0.2, 0.9],
          )
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarForApp(indexNum: 1,),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("All Workers Screen"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepOrange.shade300, Colors.blueAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: const [0.2, 0.9],
                )
            ),
          ),
        ),
        body: Text('d'),
      ),
    );
  }
}
