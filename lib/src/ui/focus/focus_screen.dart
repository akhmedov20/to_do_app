import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({Key? key}) : super(key: key);

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  Duration duration = Duration();
  Timer? timer;

  @override
  void initState(){
    data = [
      _ChartData('MON', 2.5),
      _ChartData('TUE', 2.6),
      _ChartData('WED', 3),
      _ChartData('THU', 5.3),
      _ChartData('FRI', 2),
      _ChartData('SAT', 1.4),
      _ChartData('SUN', 1.4),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();

    startTimer();
}
  void addTime(){
    final addSeconds = 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer(){
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
           children: <Widget>[
             SizedBox(height: 35,),
             Center(child: Text("Focus Mode", style: GoogleFonts.roboto(
                 textStyle: TextStyle(
                   color: Colors.white,fontWeight: FontWeight.bold,
                   fontSize: 20                ,
                 )
             ),),),
             SizedBox(height: 50,),
             buildTime(),
             SizedBox(height: 20,),
             Container(width: 325,
               height: 48,
               child: Text("Fokus rejimi yoqilgan bo'lsa, barcha bildirishnomalaringiz o'chiriladi",
                 style: GoogleFonts.roboto(
                     textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 16                ,
                     )
                 ),
                 textAlign: TextAlign.center,),
             ),
             SizedBox(height: 20,),
             Row(children: [
               SizedBox(width: 30,),
               SizedBox(width: 150,height: 48,
                 child: ElevatedButton(style: ElevatedButton.styleFrom(
                     primary: Colors.blue
                 ),
                     onPressed: (){}, child: Text(
                   "START",style: GoogleFonts.roboto(
                     textStyle: TextStyle(
                       color: Colors.white,fontWeight: FontWeight.bold,
                       fontSize: 20                ,
                     )
                 )
                 )),
               ),
               SizedBox(width: 40,),
               SizedBox(width: 150,height: 48,
                 child: ElevatedButton(style: ElevatedButton.styleFrom(
                   primary: Colors.red
                 ),
                     onPressed: (){}, child: Text(
                     "STOP",style: GoogleFonts.roboto(
                     textStyle: TextStyle(
                       color: Colors.white,fontWeight: FontWeight.bold,
                       fontSize: 20                ,
                     )
                 )
                 )),
               ),
             ],),
             SizedBox(height: 10,),
             Row(children: [
               SizedBox(width: 24,),
               Text("Umumiy ko'rinish", style: GoogleFonts.roboto(
                   textStyle: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                   )
               ),),
               Spacer(),
               Container(
                 margin: EdgeInsets.only(right: 15),
                 width: 116,height: 31,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.blueGrey
                 ),child: Row(children: [
                   SizedBox(width: 8,),
                   Text('Bu Xafta',style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 14,
                       )
                   ),), SizedBox(width: 4,),
                   IconButton(onPressed: (){},
                       icon: Icon(CupertinoIcons.down_arrow,size: 15.0,
                         color: Colors.white,))
                 ],),),
             ],),
             SizedBox(height: 40,),
             SizedBox(
               width: 380,
               height: 207,
               child: SfCartesianChart(
                   primaryXAxis: CategoryAxis(),
                   primaryYAxis: NumericAxis(minimum: 0, maximum: 6, interval: 2),
                   tooltipBehavior: _tooltip,
                   series: <ChartSeries<_ChartData, String>>[
                     ColumnSeries<_ChartData, String>(
                         dataSource: data,
                         xValueMapper: (_ChartData data, _) => data.x,
                         yValueMapper: (_ChartData data, _) => data.y,
                         name: 'Gold',
                         color: Color.fromRGBO(8, 142, 255, 1))
                   ]),
             ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.only(right: 252),
               child: Text("Xujjatlar",style: GoogleFonts.roboto(
                   textStyle: TextStyle(
                     color: Colors.white,
                     fontSize: 20                ,
                   )
               )),
             ),
             SizedBox(height: 16,),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 15),
               width: MediaQuery.of(context).size.width,
               height: 66,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 color: Colors.grey
               ),
               child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 4,right: 202),
                   child: Text("Instagram",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 14                ,
                       )
                   ),),
                 ),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10,bottom: 10,),
                     child: SvgPicture.asset("assets/icons/instagram.svg"),
                   ),SizedBox(width: 5,),
                   Text("Siz Instagramda 4soat o'tkazdiz",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 12                ,
                       )
                   ),),
                   SizedBox(width: 60,),
                   Container(
                     margin: EdgeInsets.only(bottom: 1),
                     width: 1,
                     height: 41,
                     color: Colors.white,
                   ),
                   SizedBox(width: 25,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: Icon(Icons.info,color: Colors.white,size: 30,),
                   ),
                 ],)
               ],),
             ),
             SizedBox(height: 16,),
             Container  (
               margin: EdgeInsets.symmetric(horizontal: 15),
               width: MediaQuery.of(context).size.width,
               height: 66,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Colors.grey
               ),
               child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 4,right: 218),
                   child: Text("Twitter",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 14                ,
                       )
                   ),),
                 ),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10,bottom: 12,),
                     child: SizedBox(width: 30,height: 30,
                       child: SvgPicture.asset(
                           "assets/icons/twitter.svg"),
                     ),
                   ),SizedBox(width: 10,),
                   Text("Siz Twitterda 4soat o'tkazdiz",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 12                ,
                       )
                   ),),
                   SizedBox(width: 75,),
                   Container(
                     margin: EdgeInsets.only(bottom: 1),
                     width: 1,
                     height: 41,
                     color: Colors.white,
                   ),
                   SizedBox(width: 25,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: Icon(Icons.info,color: Colors.white,size: 30,),
                   ),
                 ],)
               ],),
             ),
             SizedBox(height: 16,),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 15),
               width: MediaQuery.of(context).size.width,
               height: 66,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Colors.grey
               ),
               child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 4,right: 202),
                   child: Text("Telegram",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 14                ,
                       )
                   ),),
                 ),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10,bottom: 10,),
                     child: SvgPicture.asset("assets/icons/telegram.svg"),
                   ),SizedBox(width: 10,),
                   Text("Siz Telegramda 4soat o'tkazdiz",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 12                ,
                       )
                   ),),
                   SizedBox(width: 60,),
                   Container(
                     margin: EdgeInsets.only(bottom: 1),
                     width: 1,
                     height: 41,
                     color: Colors.white,
                   ),
                   SizedBox(width: 25,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: Icon(Icons.info,color: Colors.white,size: 30,),
                   ),
                 ],)
               ],),
             ),
             SizedBox(height: 16,),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 15),
               width: MediaQuery.of(context).size.width,
               height: 66,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Colors.grey
               ),
               child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 4,right: 202),
                   child: Text("Facebook",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 14                ,
                       )
                   ),),
                 ),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10,bottom: 10,),
                     child: SvgPicture.asset("assets/icons/facebook.svg"),
                   ),SizedBox(width: 8,),
                   Text("Siz Facebookda 4soat o'tkazdiz",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 12                ,
                       )
                   ),),
                   SizedBox(width: 60,),
                   Container(
                     margin: EdgeInsets.only(bottom: 1),
                     width: 1,
                     height: 41,
                     color: Colors.white,
                   ),
                   SizedBox(width: 25,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: Icon(Icons.info,color: Colors.white,size: 30,),
                   ),
                 ],)
               ],),
             ),
             SizedBox(height: 16,),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 15),
               width: MediaQuery.of(context).size.width,
               height: 66,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Colors.grey
               ),
               child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 4,right: 228),
                   child: Text("Gmail",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 14                ,
                       )
                   ),),
                 ),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10,bottom: 10,),
                     child: SvgPicture.asset("assets/icons/gmail.svg"),
                   ),SizedBox(width: 8,),
                   Text("Siz Gmailda 4soat o'tkazdiz",style: GoogleFonts.roboto(
                       textStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 12                ,
                       )
                   ),),
                   SizedBox(width: 82,),
                   Container(
                     margin: EdgeInsets.only(bottom: 1),
                     width: 1,
                     height: 41,
                     color: Colors.white,
                   ),
                   SizedBox(width: 25,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: Icon(Icons.info,color: Colors.white,size: 30,),
                   ),
                 ],)
               ],),
             ),
           ],
        ),
      ),

    );
  }
  Widget buildTime(){
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Container(
      width: 213,
      height: 213,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(213),
          color: Colors.black,
          border: Border.all(width: 10.0,color: Colors.grey)
      ),
      child: Center(
        child: Text("$minutes:$seconds",
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 40                ,
              )
          ),
        ),),
    );
  }
}
class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

