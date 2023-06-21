import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/ui/calendar/calendar_screen.dart';
import 'package:to_do_app/src/ui/focus/focus_screen.dart';
import 'package:to_do_app/src/ui/home/home_screen.dart';
import 'package:to_do_app/src/ui/profile/profile_screen.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool color = false;
  DateTime date = DateTime(2023,06,16);
  TimeOfDay time = TimeOfDay(hour: 12, minute: 45);
  int currentTab=0;
  List<Widget> screen = [
    HomeScreen(),
    CalendarScreen(),
    FocusScreen(),
    ProfileScreen()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,

      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
        showModalBottomSheet(
          isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
              )
            ),
            context: context,
            builder: (context) => Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              color: Colors.grey[900],
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text("Ish qo'shing",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.white,
                            fontSize: 20)
                    ),),
                  ),
                  SizedBox(height: 14,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
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
                              hintText: "Matematika vazifasini qil",
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
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.transparent)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Izoh",
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
                  SizedBox(height: 10,),
                  Row(children: [
                    SizedBox(width: 24,),
                    IconButton(onPressed: ()async{
                      TimeOfDay ? newTime = await showTimePicker(context: context,
                          initialTime: time);
                      if(newTime == null)return;
                      setState(() {
                        time = newTime;
                      });
                    }, icon: Icon(Icons.timer,color: Colors.white,)),
                    SizedBox(width: 30,),
                    IconButton(onPressed: () async {
                      DateTime? newDate = await showDatePicker(context: context,
                         initialDate: date,
                       firstDate: DateTime(1900),
                       lastDate: DateTime(2100),
                     );if(newDate == null)return;
                     setState(() {
                        date = newDate;
                     });
                    }, icon: Icon(Icons.sell_outlined,color: Colors.white,)),
                    SizedBox(width: 30,),
                    IconButton(onPressed: (){
                    _showDialog(context);
                    }, icon: Icon(Icons.flag,color: Colors.white,)),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.blue,)),
                  ],)
                ],
              ),
            )
        );
        },
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.grey,
        shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                        color: currentTab == 0 ? Colors.black : Colors.grey,),
                        Text("Home",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: currentTab == 0 ? Colors.black : Colors.grey
                          )
                        ),)
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = CalendarScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_month,
                          color: currentTab == 1 ? Colors.black : Colors.grey,),
                        Text("Kalendar",style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 12,
                                color: currentTab == 1 ? Colors.black : Colors.grey
                            )
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = FocusScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time_outlined,
                          color: currentTab == 2 ? Colors.black : Colors.grey,),
                        Text("Focus",style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 12,
                                color: currentTab == 2 ? Colors.black : Colors.grey
                            )
                        ),)
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = ProfileScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                          color: currentTab == 3 ? Colors.black : Colors.grey,),
                        Text("Profil",style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 12,
                                color: currentTab == 3 ? Colors.black : Colors.grey
                            )
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),),
      ),
    );
  }
   _showDialog(BuildContext c)  {
    return  showDialog(
        context: c,
        barrierDismissible: true,
        builder: (c) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            elevation: 0,
            backgroundColor: Colors.transparent,
            content: Container(
              width: 500,
              height: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[900]
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Center(child: Text("Ishlar prioriteti",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.white,
                          fontSize: 16)
                  ),),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Container(width: MediaQuery.of(c).size.width,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(children: [
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          color = true;
                        });
                      },
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: color ? Colors.blue : Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("1",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          color = true;
                        });
                      },
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: color ? Colors.blue : Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("2",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          color = true;
                        });
                      },
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: color ? Colors.blue : Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("3",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          color = true;
                        });
                      },
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: color ? Colors.blue : Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("4",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                  ],),
                  SizedBox(height: 20,),
                  Row(children: [
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          color = !color;
                        });
                      },
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: color ? Colors.blue : Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("5",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          color = true;
                        });
                      },
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: color ? Colors.blue : Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("6",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("7",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("8",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                  ],),
                  SizedBox(height: 20,),
                  Row(children: [
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("9",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(width: 64,height: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black45
                        ),
                        child: Column(children: [
                          SizedBox(height: 5,),
                          Icon(Icons.flag,color: Colors.white,),
                          SizedBox(height: 5,),
                          Center(child: Text("10",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,
                                  fontSize: 16)
                          ),))
                        ],),
                      ),
                    ),
                  ],),
                  SizedBox(height: 5,),
                  Row(children: [
                    SizedBox(width: 5,),
                    GestureDetector(onTap: (){
                    },
                        child: Container(
                          width: 144,height: 48,
                          color: Colors.transparent,
                          child: Center(child: Text("Bekor qil",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,
                                  fontSize: 16)
                          ),),),
                        )),
                    SizedBox(width: 10,),
                    GestureDetector(onTap: (){
                    },
                        child: Container(
                          width: 144,height: 48,
                          color: Colors.blue,
                          child: Center(child: Text("Saqla",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                  fontSize: 16)
                          ),),),
                        )),
                  ],)
                ],
              ),
            ),

          );
        });
  }
}

