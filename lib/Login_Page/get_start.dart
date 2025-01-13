import 'package:flutter/material.dart';
import 'package:spotify_final_project/Login_Page/choose_Mode.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          // Background Image
      Container(
        child: Image.asset(
          'assets/wp4780558-billie-eilish-glasses-wallpapers 1 (1).png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      Positioned(
          top: 20,
          left: MediaQuery.of(context).size.width / 2 - 50,
          child: Image.asset(
            'assets/Vector (1).png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          )),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Enjoy Listening To Music',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 225, 40),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChooseMode()));
                  },
                 child:const Text("Get Started",style: TextStyle(fontSize: 18,color: Colors.white),),),),
          ]),
        )
                
        )],
        ),
        );
        
    
  }
}
