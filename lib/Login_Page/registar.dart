import 'package:flutter/material.dart';
import 'package:spotify_final_project/Login_Page/choose_Mode.dart';
import 'package:spotify_final_project/Login_Page/reg_singin.dart';
import 'package:spotify_final_project/home_Page/home_Page.dart';

class Registar extends StatefulWidget {
  const Registar({super.key});

  @override
  State<Registar> createState() => _RegistarState();
}

class _RegistarState extends State<Registar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 41, 41),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterOrSingin()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: const Color.fromARGB(255, 42, 41, 41),
        title: Center(
          child: Image.asset(
            'assets/Vector (1).png',
            height: 50,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Register',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'If You Need Any Support',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Click Here',
                style: TextStyle(color: Colors.green),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.green,
                hintText: 'Full Name',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.green,width: 2))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SpotifyHomePage()));
              },
              child: const Text(
                'Creat Account',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                ]),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.apple,
                    color: Colors.white,
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
