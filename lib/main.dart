import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/assets/images/images_constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:untitled/faq.dart';
import 'package:untitled/home.dart';
import 'package:untitled/moviedetails.dart';
import 'package:untitled/movies.dart';
import 'package:untitled/myfiles.dart';
import 'package:untitled/mystack.dart';
import 'package:untitled/register.dart';
import 'package:untitled/schedule.dart';
import 'package:untitled/showticket.dart';
import 'package:untitled/vote.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        fontFamily:"Montserrat",

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 10),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginScreen()))

    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(title: Text("Sa"),),
      body: Container(

          child: Stack(
            children: [
              // colors
              Row(
                children: [

                  Flexible(
                    flex: 5,
                    child:
                    Container(
                      color: Color(0xFF1D1D1D),
                    ),


                  ),

                  Flexible(
                      flex: 1,
                      child: Container(
                        color:Color(0XFF900606),
                      )
                  ),

                  Flexible(
                      flex: 1,
                      child: Container(
                        color:Color(0XFF5E0505),
                      )
                  )

                ],

              ),

            //   logo
                Align(
                alignment: Alignment.center,
                child: Image.asset(
                    "lib/assets/images/logo.jpeg",
                  fit: BoxFit.cover,

                ),
              )

            ],
          )






      ),
    );
  }
}
