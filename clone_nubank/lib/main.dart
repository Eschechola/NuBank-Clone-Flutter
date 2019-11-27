import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clone_nubank/pages/login/login.dart';
import 'package:clone_nubank/colors/AppColors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.principalColor
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override 
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void chamarNovaPagina(){
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, new MaterialPageRoute(
        builder: (BuildContext context) => new Login(),
      ));
      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    });
  } 

  @override
  void initState() {
    super.initState();
    chamarNovaPagina();
  }

  @override
  Widget build(BuildContext context) {
    //esconde o status bar do android
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Container(
        color: AppColors.principalColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child:
                  Image.asset('assets/images/logo-screen.png')
            )
          ],
        ),
        ),
      ),
    );
  }
}
