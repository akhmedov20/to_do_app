import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/ui/category/category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(height: 50,),
        Row(children: [
          SizedBox(width: 24,),
          IconButton(onPressed: (){
            _showDialog(context);
          }, icon: Icon(Icons.filter_list,color: Colors.white,)),
          SizedBox(width: 100,),
          Text("Index",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )
          )),
          SizedBox(width: 95,),
          GestureDetector(
            onTap: (){},
            child: Container(width: 42,height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42),
            ),child: Image.asset("assets/images/woman.png"),),
          ),
        ],),
           SizedBox(height: 20,),
           Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
            width: MediaQuery.of(context).size.width,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
              border: Border.all(color: Colors.grey)
            ),
            child: Row(children: [
              SizedBox(width: 10,),
            Icon(Icons.search,color: Colors.white,),
            SizedBox(width: 10,),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: "Vazifalaringizni qidiring...",
                    hintStyle: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )
                    )
                ),
              ),
            )
            ],)
          ),
           SizedBox(height: 20,),
           Container(margin: EdgeInsets.only(right: 275),
             width: 96,height: 31,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: Colors.blueGrey
           ),child: Row(children: [
             SizedBox(width: 7,),
             Text('Bugun',style: GoogleFonts.roboto(
                 textStyle: TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                 )
             ),),
               IconButton(onPressed: (){},
                   icon: Icon(CupertinoIcons.down_arrow,size: 15.0,
                     color: Colors.white,))
             ],),),
             SizedBox(height: 15,),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20),
               width: MediaQuery.of(context).size.width,
               height: 72,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.grey[700]
               ),child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 90),
                   child: Text("Matematika vazifangizni qiling",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,fontWeight: FontWeight.bold,
                         fontSize: 16,
                       )
                   ),),
                 ),
                 SizedBox(height: 5,),
                 Row(children: [
                   SizedBox(width: 30,),
                   Text("Bugun 12:45 da",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 14,
                       )
                   ),),SizedBox(width: 60,),
                      Container(width: 87,height: 29,
                      color: Colors.blue,
                        child: Row(children: [
                          SizedBox(width: 15,height: 15,
                              child: Image.asset('assets/images/shapka.png')),
                          SizedBox(width: 5,),
                          Text("Universitet",style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              )
                          ),),
                        ],),
                      ),
                   SizedBox(width: 10,),
                   Container(width: 48,height: 29,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.black45
                   ),child: Row(children: [
                     Icon(Icons.flag,color: Colors.white,),
                       SizedBox(width: 6,),
                       Text("1",style: GoogleFonts.roboto(
                           textStyle: TextStyle(
                             color: Colors.white,
                             fontSize: 12,
                           )
                       ),),
                     ],),
                   )
                 ],)
               ],
             ),
             ),
             SizedBox(height: 20,),
             Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 72,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[700]
          ),child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Text("Matematika vazifangizni qiling",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )
              ),),
            ),
            SizedBox(height: 5,),
            Row(children: [
              SizedBox(width: 30,),
              Text("Bugun 12:45 da",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )
              ),),SizedBox(width: 60,),
              Container(width: 87,height: 29,
                color: Colors.blue,
                child: Row(children: [
                  SizedBox(width: 15,height: 15,
                      child: Image.asset('assets/images/shapka.png')),
                  SizedBox(width: 5,),
                  Text("Universitet",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )
                  ),),
                ],),
              ),
              SizedBox(width: 10,),
              Container(width: 48,height: 29,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black45
                ),child: Row(children: [
                  Icon(Icons.flag,color: Colors.white,),
                  SizedBox(width: 6,),
                  Text("1",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )
                  ),),
                ],),
              )
            ],)
          ],
        ),
        ),
             SizedBox(height: 20,),
             Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 72,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[700]
          ),child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Text("Matematika vazifangizni qiling",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )
              ),),
            ),
            SizedBox(height: 5,),
            Row(children: [
              SizedBox(width: 30,),
              Text("Bugun 12:45 da",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )
              ),),SizedBox(width: 60,),
              Container(width: 87,height: 29,
                color: Colors.blue,
                child: Row(children: [
                  SizedBox(width: 15,height: 15,
                      child: Image.asset('assets/images/shapka.png')),
                  SizedBox(width: 5,),
                  Text("Universitet",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )
                  ),),
                ],),
              ),
              SizedBox(width: 10,),
              Container(width: 48,height: 29,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black45
                ),child: Row(children: [
                  Icon(Icons.flag,color: Colors.white,),
                  SizedBox(width: 6,),
                  Text("1",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )
                  ),),
                ],),
              )
            ],)
          ],
        ),
        ),
             SizedBox(height: 30,),
              Container(margin: EdgeInsets.only(right: 255),
          width: 116,height: 31,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey
          ),child: Row(children: [
            SizedBox(width: 8,),
            Text('Bajarildi',style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                )
            ),),SizedBox(width: 4,),
            IconButton(onPressed: (){},
                icon: Icon(CupertinoIcons.down_arrow,size: 15.0,
                  color: Colors.white,))
          ],),),
              SizedBox(height: 20,),
              Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 72,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[700]
          ),child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Text("Matematika vazifangizni qiling",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )
              ),),
            ),
            SizedBox(height: 5,),
            Row(children: [
              SizedBox(width: 30,),
              Text("Bugun 12:45 da",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )
              ),),SizedBox(width: 60,),
              Container(width: 87,height: 29,
                color: Colors.blue,
                child: Row(children: [
                  SizedBox(width: 15,height: 15,
                      child: Image.asset('assets/images/shapka.png')),
                  SizedBox(width: 5,),
                  Text("Universitet",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )
                  ),),
                ],),
              ),
              SizedBox(width: 10,),
              Container(width: 48,height: 29,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black45
                ),child: Row(children: [
                  Icon(Icons.flag,color: Colors.white,),
                  SizedBox(width: 6,),
                  Text("1",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      )
                  ),),
                ],),
              )
            ],)
          ],
        ),
        ),
        // SizedBox(height: 85.0,),
        // Container(width: 227,height: 227,
        // child: Image.asset("assets/images/homescreen.png",fit: BoxFit.cover,),),
        // SizedBox(height: 10,),
        // Text("What do you want to do today?",style: GoogleFonts.roboto(
        //     textStyle: TextStyle(
        //         color: Colors.white,
        //         fontSize: 22,
        //         fontWeight: FontWeight.bold
        //     )
        // )),
        // SizedBox(height: 10,),
        // Text("Tap + to add your tasks",style: GoogleFonts.roboto(
        //     textStyle: TextStyle(
        //         color: Colors.white,
        //         fontSize: 17,
        //         fontWeight: FontWeight.bold
        //     )
        // )),

      ],),
    );
  }
}
Future<Widget> _showDialog(BuildContext c) async {
  return await showDialog(
      context: c,
      barrierDismissible: true,
      builder: (c) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
         content: Container(
           width: 467,
           height: 556,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: Colors.black
           ),
           child: Column(
             children: [
               SizedBox(height: 8,),
               Center(child: Text("Choose Category",style: GoogleFonts.roboto(
                 textStyle: TextStyle(color: Colors.white,fontSize: 16)
               ),),),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 5),
                 child: Container(width: MediaQuery.of(c).size.width,height: 1,color: Colors.grey,),
               ),
              SizedBox(height: 15,),
               Row(children: [
                 SizedBox(width: 15,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.amber
                     ),child: Center(child: Image.asset("assets/images/bread.png")),
                   ),
                 ),
                 SizedBox(width: 20,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.redAccent
                     ),child: Center(child: Image.asset("assets/images/bag.png")),
                   ),
                 ),
                 SizedBox(width: 20,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.lightBlue
                     ),child: Center(child: Image.asset("assets/images/gantel.png")),
                   ),
                 ),


               ],),
               SizedBox(height: 8,),
               Row(children: [
                 SizedBox(width: 12,),
                 Text('Oziq-ovqat',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
                 SizedBox(width: 40,),
                 Text('Ish',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
                 SizedBox(width: 55,),
                 Text('Sport',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),

               ],),
               SizedBox(height: 15,),
               Row(children: [
                 SizedBox(width: 15,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.greenAccent
                     ),child: Center(child: Image.asset("assets/images/design.png")),
                   ),
                 ),
                 SizedBox(width: 20,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.blue[900]
                     ),child: Center(child: Image.asset("assets/images/shapka.png",color: Colors.white,)),
                   ),
                 ),
                 SizedBox(width: 20,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.pinkAccent
                     ),child: Center(child: Image.asset("assets/images/megaphone.png")),
                   ),
                 ),

               ],),
               SizedBox(height: 8,),
               Row(children: [
                 SizedBox(width: 25,),
                 Text('Dizayn',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
                 SizedBox(width: 30,),
                 Text('Universitet',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
                 SizedBox(width: 25,),
                 Text('Ijtimoiy',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),

               ],),
               SizedBox(height: 15,),
               Row(children: [
                 SizedBox(width: 15,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.pink
                     ),child: Center(child: Image.asset("assets/images/music.png")),
                   ),
                 ),
                 SizedBox(width: 20,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.greenAccent
                     ),child: Center(child: Image.asset("assets/images/heartbeat.png")),
                   ),
                 ),
                 SizedBox(width: 20,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.lightBlue
                     ),child: Center(child: Image.asset("assets/images/Camera.png")),
                   ),
                 ),
               ],),
               SizedBox(height: 8,),
               Row(children: [
                 SizedBox(width: 25.0,),
                 Text('Musiqa',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
                 SizedBox(width: 35,),
                 Text("Sog'liq",style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
                 SizedBox(width: 45,),
                 Text('Kino',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),

               ],),
               SizedBox(height: 15,),
               Row(children: [
                 SizedBox(width: 15,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.orange
                     ),child: Center(child: Image.asset("assets/images/house.png")),
                   ),
                 ),
                 SizedBox(width: 20,),
                 GestureDetector(
                   onTap: (){
                     Navigator.push(c, MaterialPageRoute(builder: (context){
                       return CategoryScreen();
                     }));
                   },
                   child: Container(width: 64,height: 64,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.lime
                     ),child: Center(child: Image.asset("assets/images/add.png")),
                   ),
                 ),
                 SizedBox(width: 40,),
               ],),
               SizedBox(height: 8,),
               Row(children: [
                 SizedBox(width: 30,),
                 Text('Home',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
                 SizedBox(width: 25,),
                 Text('Yangisini boshla',style: GoogleFonts.roboto(
                     textStyle: TextStyle(color: Colors.white,fontSize: 14)
                 ),),
               ],),
               SizedBox(height: 10,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 15),
                 width: MediaQuery.of(c).size.width,
                 height: 48,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(8),
                     border: Border.all(color: Colors.white)
                 ),
                child: Center(child: Text("Categoriya qo'shing",style: GoogleFonts.roboto(
                    textStyle: TextStyle(color: Colors.white,fontSize: 16)
                ),),),
               )
             ],
           ),
         ),

        );
      });
}
