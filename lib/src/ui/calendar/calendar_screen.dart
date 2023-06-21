import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 20,),
          SfCalendar(
            backgroundColor: Colors.grey[700],
            view: CalendarView.week,
            showWeekNumber: true,
            weekNumberStyle: const WeekNumberStyle(
              backgroundColor: Colors.pink,
              textStyle: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          SizedBox(height: 20,),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey
              ),
              child: Row(children: [
                SizedBox(width: 15,),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: 137,
                    height: 49,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Center(child: Text("Bugun",style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,
                          fontSize: 16
                        )
                    ),),),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 137,
                    height: 49,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.grey[700],
                    ),
                    child: Center(child: Text("Bajarildi",style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 16
                        )
                    ),),),
                  ),
                ),
              ],),
            )
          ],),
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
              SizedBox(height: 5,),
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
                Container(width: 97,height: 29,
                  color: Colors.blue,
                  child: Row(children: [
                    SizedBox(width: 5,),
                    SizedBox(width: 15,height: 15,
                        child: Image.asset('assets/images/shapka.png')),
                    SizedBox(width: 10,),
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
                    SizedBox(width: 5,),
                    Icon(Icons.flag,color: Colors.white,size: 15.0,),
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
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Bozor ga borish",style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )
                ),),
              ),
              SizedBox(height: 5,),
              Row(children: [
                SizedBox(width: 32,),
                Text("Bugun 12:45 da",style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    )
                ),),SizedBox(width: 60,),
                Container(width: 97,height: 29,
                  color: Colors.amber,
                  child: Row(children: [
                    SizedBox(width: 5,),
                    SizedBox(width: 15,height: 15,
                        child: Icon(Icons.shopping_cart,color: Colors.white,)),
                    SizedBox(width: 15,),
                    Text("Bozor",style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
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
                    SizedBox(width: 5,),
                    Icon(Icons.flag,color: Colors.white,size: 15.0,),
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
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text("Zalga borish",style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )
                ),),
              ),
              SizedBox(height: 5,),
              Row(children: [
                SizedBox(width: 32,),
                Text("Bugun 12:45 da",style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    )
                ),),SizedBox(width: 60,),
                Container(width: 97,height: 29,
                  color: Colors.blue[400],
                  child: Row(children: [
                    SizedBox(width: 5,),
                    SizedBox(width: 15,height: 15,
                        child: Image.asset('assets/images/gantel.png',color: Colors.white,)),
                    SizedBox(width: 15,),
                    Text("Sport",style: GoogleFonts.roboto(
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
                    SizedBox(width: 5,),
                    Icon(Icons.flag,color: Colors.white,size: 15.0,),
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

        ],
      ),
    );
  }
}
