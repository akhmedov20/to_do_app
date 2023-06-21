import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/ui/home/home_screen.dart';
import 'package:to_do_app/src/ui/register/register_screen.dart';

import '../bottomnavigator/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isNext = false;
  TextEditingController _controller = TextEditingController();
  Color color = Colors.grey;
  @override
  void initState(){
    _controller.addListener(() {
      if (_controller.text.length >= 8){
        setState(() {
          isNext = true;
        });
      }else{
        setState(() {
          isNext = false;
        });
      }
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:  BackButton(color: Colors.white,
          onPressed: (){},
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 44,),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Text("Login",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold
              )
            ),),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Text("Username",style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                )
            ),),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your Username",
                    hintStyle: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      )
                    )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text("Password",style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                )
            ),),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                  border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: _controller,
                  decoration: InputDecoration(
                      hintText: "* * * * * * * *",
                      hintStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          )
                      )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 65),
          GestureDetector(
            onTap: (){
              if(_controller.text.length >=8){
                setState(() {
                  color = Colors.blue;
                });
              }
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MainScreen();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Login",style:GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      )
                  ),),
                ),
              ),
            ),
          ),
          SizedBox(height: 31,),
          Row(children: [
            SizedBox(width: 24,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:10.0),
              child:Container(
                height:1.0,
                width:150.0,
                color:Colors.grey,),),
            SizedBox(width: 2,),
            Text("or",style:GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                )
            ),),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:10.0),
              child:Container(
                height:1.0,
                width:150.0,
                color:Colors.grey,),),
          ],),
          SizedBox(height: 29,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: (){},
              child: Container(width: MediaQuery.of(context).size.width,
              height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blue),
                  ),
                child: Row(children: [
                  SizedBox(width: 90,),
                  SizedBox(width: 24,height: 24,
                      child: Image.asset("assets/images/google.png")),
                  SizedBox(width: 11,),
                  Text("Login with Google",style:GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      )
                  ),)
                ],),
                  ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: (){},
              child: Container(width: MediaQuery.of(context).size.width,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue),
                ),
                child: Row(children: [
                  SizedBox(width: 90,),
                  SizedBox(width: 24,height: 24,
                      child: Image.asset("assets/images/apple.png")),
                  SizedBox(width: 11,),
                  Text("Login with Apple",style:GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      )
                  ),)
                ],),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Row(children: [
            SizedBox(width: 80,),
            Text("Don’t have an account?",style: GoogleFonts.roboto(
          textStyle: TextStyle(
          color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          )
    ),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return RegisterScreen();
              }));
            }, child: Text(
              "Register",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )
              ),
            )),
          ],)
        ],
      ),
    );
  }
}
