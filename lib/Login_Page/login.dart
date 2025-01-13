import 'package:flutter/material.dart';
import 'package:spotify_final_project/Login_Page/reg_singin.dart';
import 'package:spotify_final_project/home_Page/home_Page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Sign In',
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
          
                  hintText: 'Enter Username or Email',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SpotifyHomePage())
                  );
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.green,),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){},
                  icon: const Icon(Icons.facebook, color: Colors.blue, size: 30,)),
                  IconButton(onPressed: (){},
                  icon: const Icon(Icons.apple, color: Colors.white, size: 30,)),
                  
                ]
              )
            ],
          ),
        ));
  }
}
