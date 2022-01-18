import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToScreen();
  }



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child:Image(
              image: AssetImage('assets/pubg.png'),
          ),
        ),
      ),
    );
  }

  void navigateToScreen()async {
    await Future.delayed(const Duration(milliseconds: 2500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
  }
}
