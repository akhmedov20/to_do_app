import 'package:flutter/material.dart';
import 'package:to_do_app/src/ui/onboarding/onboarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          OnBoardingWidget(image: "assets/images/onboarding.png",
              title: "Manage your tasks",
              body: "You can easily manage all of your daily tasks in DoMe for free")
        ],
      )
    );
  }
}
