import 'package:flutter/material.dart';
import 'package:spotify_final_project/Login_Page/login.dart';
import 'package:spotify_final_project/Login_Page/registar.dart';

class RegisterOrSingin extends StatefulWidget {
  const RegisterOrSingin({super.key});

  @override
  State<RegisterOrSingin> createState() => __RegisterOrSinginStateState();
}

class __RegisterOrSinginStateState extends State<RegisterOrSingin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  const Color.fromARGB(255, 42, 41, 41),
        body: Stack(
          children: [
            Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/Vector (1).png'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Enjoy listening to music',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Spotify is a proprietary Swedish audio streaming and media services provider ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 42, 219, 48),
                            ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  const Registar()),
                                );
                              }, child: Text('Registar')),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 42, 219, 48)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>SignIn())
                                );
                              }, child: Text('Sing in')),
                        ])
                  ],
            
                ),
              ),
            ],
          ),
          Align(
            alignment:Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/15mag-billie-03-master675-v3 1.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(padding: EdgeInsets.all(8),
            child: Image.asset('assets/Union.png'),),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(padding: EdgeInsets.all(8),
            child: Image.asset('assets/Union (1).png'),),
          )
        ]),
      ),
    );
  }
}
