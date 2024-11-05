import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, top: 150, bottom: 30),
            child: Image.asset("lib/images/watermelon.png"),
          ),
          // Text
           Padding(
            padding:const EdgeInsets.all(24.0),
            child: Text(
              textAlign: TextAlign.center,
              "Naga adeego adiga oo gurigaaga Jooga",
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ), 
          ),
          // Sub Text
         Text("Khudaar Cusub Maalin kast 🥕",
          style: TextStyle(color: Colors.grey[600]),
          ),
          const Spacer(),
          // button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: GestureDetector(
              onTap: ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
                return const HomePage();
              })),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Start",
                        style:
                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                      SizedBox(width: 20,),
                      Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          ),
         const Spacer()
        ],
      ),
    );
  }
}
