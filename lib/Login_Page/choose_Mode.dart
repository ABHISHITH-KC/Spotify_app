import 'package:flutter/material.dart';

import 'reg_singin.dart';

class ChooseMode extends StatefulWidget {
  const ChooseMode({super.key});

  @override
  State<ChooseMode> createState() => _ChooseModeState();
}

class _ChooseModeState extends State<ChooseMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //Background Image
        Container(
            child: Image.asset(
          'assets/wp5809281-billie-eilish-green-hair-wallpapers 1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        )),
        Positioned(
            top: 20,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: Image.asset(
              'assets/Vector (1).png',
              width: 100,
              height: 100,
            )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        'Choose Mode',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.dark_mode))),
                            const SizedBox(height: 5),
                            const Text(
                              'Dark Mode ',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.light_mode))),
                            const SizedBox(height: 5),
                            const Text(
                              'Light Mode',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 33, 225, 40),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const RegisterOrSingin())
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ))
                  ]),
            ))
      ]),
    );
  }
}
