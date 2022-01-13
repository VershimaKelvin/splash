import 'package:flutter/material.dart';
import 'package:splash/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState(){
    super.initState();
    doWork();
    }

    doWork()async{
      bool value = await getVisitingFlag();
      if (value==false){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SplashScreen()));
      }else{
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Home()));
      }
    }

    Future<bool> getVisitingFlag()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('alreadyVisited')?? false;
    }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('body'),
    );
  }
}
