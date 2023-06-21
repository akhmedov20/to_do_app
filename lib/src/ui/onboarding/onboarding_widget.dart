import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingWidget extends StatelessWidget {
  final String image,title,body;
  const OnBoardingWidget({Key? key, required this.image, required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(width: 213,height: 277,
              child: Image.asset(image)),
          SizedBox(height: 20,),
          Text(title,style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white
            )
          ),),
          SizedBox(height: 20,),
          SizedBox(width: 299,height: 48,
            child: Text(body,textAlign: TextAlign.center,style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                )
            ),),
          ),
        ],
      ),
    );
  }
}
