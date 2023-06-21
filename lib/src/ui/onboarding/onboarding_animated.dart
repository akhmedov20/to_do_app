import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/ui/onboarding/onboarding_widget.dart';

import '../login/login_screen.dart';

class OnBoardingAnimated extends StatefulWidget {
  const OnBoardingAnimated({Key? key}) : super(key: key);

  @override
  State<OnBoardingAnimated> createState() => _OnBoardingAnimatedState();
}
 PageController _pageController = PageController();
 int currentIndex = 0;
class _OnBoardingAnimatedState extends State<OnBoardingAnimated> {
  @override
  void initState(){
    _pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: TextButton(
          onPressed: (){},
          child: Text("SKIP",style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Colors.white
              )
          ),),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: PageView(
            children: [
              OnBoardingWidget(image: "assets/images/onboarding.png",
                  title: "Vazifalaringizni boshqaring",
                  body: "DoMe-da barcha kundalik vazifalaringizni osongina boshqarishingiz mumkin"),
              OnBoardingWidget(image: "assets/images/onboarding2.png",
                  title: "Kundalik tartibni yarating",
                  body: "Uptodo-da samarali ishlash uchun o'zingizning shaxsiy tartibingizni yaratishingiz mumkin"),
              OnBoardingWidget(image: "assets/images/onboarding3.png",
                  title: "Organize your tasks",
                  body: "You can organize your daily tasks by adding them to separate categories"),
            ],
            controller: _pageController,
            onPageChanged: (i){
              setState(() {
                currentIndex = i;
              });
            },
          )),
          Container(
            margin: const EdgeInsets.only(
                bottom: 44,
                left: 25,
                right: 25
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
          GestureDetector(
            onTap: (){
              if (currentIndex == 0) {
                setState(() {
                  currentIndex = 1;
                  _pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                  // _pageController.jumpToPage(1);
                });
              } else if (currentIndex == 1) {
                setState(() {
                  currentIndex = 2;
                  _pageController.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                  //_pageController.jumpToPage(2);
                });
              } else if (currentIndex == 2) {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return LoginScreen();
                }));
              }
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Container(width: 90,height: 48,
                      color: Colors.black,
                      child: Center(
                          child: Text('Orqasi',style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              )
                          ),))),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Container(width: 90,height: 48,
                      color: Colors.blue,
                      child: Center(
                          child: Text(currentIndex==2?'Boshlash':'Keyingisi',style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              )
                          ),))),
                ),

              ],
            )
          ),
        ],
      ),
    );
  }
  Widget _indicator (bool isActive){
    return AnimatedContainer(
      curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
      height: 9,
      width: isActive ? 28 : 28,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: isActive ? Colors.grey : Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
  List<Widget> _buildIndicator(){
    List<Widget> indicators = [];
    for(int i = 0; i < 3; i++){
      if(currentIndex == i){
        indicators.add(_indicator(true));
      }else{
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
