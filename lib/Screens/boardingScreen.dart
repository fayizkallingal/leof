import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:leof/Screens/bottomScreens/Home_Screen.dart';
import 'package:leof/Screens/Login_Screen.dart';

class BoardingScreen extends StatelessWidget {
  BoardingScreen({super.key});

  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pagedecortion = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop now',
          body: 'LEOF fashions its a new era in fashion, there are no rules ',
          image: Image.asset("images/slide1.png"),
          decoration: pagedecortion,
        ),
        PageViewModel(
          title: 'Shop now',
          body: 'Choose your Fashion Style that Fits you',
          image: Image.asset("images/slide2.png"),
          decoration: pagedecortion,
        ),
        PageViewModel(
          title: 'Shop now',
          body:
              'Fill Your Cart By Our Stylish . Hurry up Our Offers are Waiting ',
          image: Image.asset("images/slide3.png"),
          decoration: pagedecortion,
        ),
      ],
      showSkipButton: false,
      showDoneButton: true,
      showBackButton: true,
      back: const Text(
        "back",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 48, 255, 86),
        ),
      ),
      next: const Text(
        "next",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 48, 255, 86),
        ),
      ),
      done: const Text(
        "Done",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 48, 255, 86),
        ),
      ),
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        activeSize: const Size(20, 10),
        activeColor: Colors.green,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
