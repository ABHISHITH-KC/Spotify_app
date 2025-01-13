import 'package:flutter/material.dart';
import 'package:spotify_final_project/home_Page/home_Page.dart';

import 'bottomnavigationbar.dart';

class Profiel extends StatefulWidget {
  const Profiel({super.key});

  @override
  State<Profiel> createState() => _ProfielState();
}

class _ProfielState extends State<Profiel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 24, 24),
        title: Image.asset('assets/Vector (1).png'),
        // actions: [
        //   IconButton(onPressed: (){
        //     Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => HomePage()));
        //   },
        //   icon: Icon(Icons.arrow_back)),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const Bottomnavigationbar(),
    );
  }
}
