import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/ui/profile/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(height: 30,),
        Row(children: [
          IconButton(onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context){
              return ProfileScreen();
            }));
          }, icon: Icon(CupertinoIcons.left_chevron,color: Colors.white,)),
          SizedBox(width: 110,),
          Text("Sozlamalar",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )
          ),),
        ],),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 290),
          child: Text("Sozlamalar",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )
          ),),
        ),
        SizedBox(height: 15,),
        ListTile(
          leading:  Icon(Icons.draw,color: Colors.white,size: 30,),
          title: Text("Ilova rangini o'zgartirish",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 18                ,
              )
          ),),
          trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
        ),
        ListTile(
          leading:  Icon(Icons.text_fields,color: Colors.white,size: 30,),
          title: Text("Ilova tipografiyasini o'zgartirish",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 18                ,
              )
          ),),
          trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
        ),
        ListTile(
          leading:  Icon(Icons.translate,color: Colors.white,size: 30,),
          title: Text("Ilova tilini o'zgartirish",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 18                ,
              )
          ),),
          trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
        ),
        SizedBox(height: 28,),
        Padding(
          padding: const EdgeInsets.only(right: 320),
          child: Text("Import",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )
          ),),
        ),
        SizedBox(height: 15,),
        ListTile(
          leading:  Icon(Icons.download_outlined,color: Colors.white,size: 30,),
          title: Text("Google kalendaridan import qiling",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 18                ,
              )
          ),),
          trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
        ),
      ],),
    );
  }
}
