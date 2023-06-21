import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/widget/textfield_widget.dart';

import '../home/home_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 45,),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text("Yangi kategoriyani och",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 20)
            ),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 234),
            child: Text("Kategoriya ismi:",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 16)
            ),),
          ),
          SizedBox(height: 20,),
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
                      hintText: "Kategoriya ismi",
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 234),
            child: Text("Kategoriya iconi:",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 16)
            ),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Container(width: 194,height: 47,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[900]
            ),child: Center(child: Text(
                "Icondi kutubxonadan tanlang",style: GoogleFonts.roboto(
                  textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                      fontSize: 12)
              ),
              ),),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 224),
            child: Text("Kategoriya rangi:",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 16)
            ),),
          ),
          SizedBox(height: 16,),
          SizedBox(
            height: 50,width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.amber
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.teal
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.red
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.pink
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.purple
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.blue
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.blue[900]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(width: 36,height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.orange
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 370,),
          Row(children: [
            SizedBox(width: 24,),
            GestureDetector(onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return HomeScreen();
              }));
            },
                child: Container(
                  width: 154,height: 48,
                  color: Colors.transparent,
                  child: Center(child: Text("Orqaga",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,
                          fontSize: 16)
                  ),),),
                )),
            SizedBox(width: 40,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FieldWidget();
              }));
            },
                child: Container(
                  width: 154,height: 48,
                  color: Colors.blue,
                  child: Center(child: Text("Kategoriya och",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                          fontSize: 16)
                  ),),),
                )),
          ],)
        ],
      ),
    );
  }
}
