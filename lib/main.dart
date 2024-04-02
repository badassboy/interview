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
import 'package:untitled/otp.dart';
import 'package:untitled/register.dart';
import 'package:untitled/schedule.dart';
import 'package:untitled/showticket.dart';
import 'package:untitled/ticket.dart';
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

  // @override
  // void initState(){
  //   super.initState();
  //   Timer(
  //     Duration(seconds: 10),
  //       () => Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context) => Ticket()))
  //
  //   );
  // }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
          color: Colors.blue,
        ),
        title: Text(
            "SIG",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],

      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Card(
        margin: EdgeInsets.all(10.0),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        child: Container(
          height: 300,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Color(0xFF015FFF), Color(0xFF015FFF)])),
            padding: EdgeInsets.all(5.0),
            // color: Color(0xFF015FFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                              "Balance",
                              style: TextStyle(
                                  color: Colors.blue
                              ),
                            )
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Intelligent AI trading",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0
                            ),
                          ) ,
                        )



                      ],
                    ),


                // second row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                        Text(
                          "Account Balance",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),


                    Text(
                      "Today 2024/02/22",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0
                      ),
                    )

                  ],
                ),

                Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text(r"$ " "95,940.00",
                        style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  ),
                SizedBox(height: 35.0),



                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "0.001%",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "UDI186",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0
                        ),
                      ) ,
                    ),

                  ],
                ),

              SizedBox(height: 10,),

              //   row of button

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,

                      ),
                     width: 50,
                     height: 20,
                     child: Column(
                       children: [
                         Text(
                           "Today earning",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 12
                           ),
                         ),
                         SizedBox(height: 5.0,),
                         Text(
                           "0.00",
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 13
                           ),
                         )
                       ],
                     ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "UDI186",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0
                        ),
                      ) ,
                    ),

                  ],
                ),



              ],
            )),
           ),

        // buttons
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black87
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed:(){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                      ),
                      child: Text(
                        "Loan",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                  ),
                  SizedBox(width: 5,),

                  ElevatedButton(
                      onPressed:(){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                      ),
                      child: Text(
                        "Deposit",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                  ),
                  SizedBox(width: 5.0,),


                  ElevatedButton(
                      onPressed:(){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      child: Text(
                        "Withdrawal",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                  ),


                ],
              ),
            ),

        Container(
          height: 100,
        margin: EdgeInsets.all(15.0),
              child: Column(
              children: <Widget>[

              accountItems("Trevello App", r"+ $ 4,946.00", "28-04-16", "credit",
              oddColour:  Colors.black),
                accountItems("Trevello App", r"+ $ 4,946.00", "28-04-16", "credit",
                    oddColour:  Colors.black),

                accountItems("Trevello App", r"+ $ 4,946.00", "28-04-16", "credit",
                    oddColour:  Colors.black),



              ],
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ) ,
    );
  }

  accountItems(String item, String charge, String dateString, String type, {required Color oddColour}) {
   return  Container(
        decoration: BoxDecoration(color: oddColour),
    padding:EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
    child: Column(
    children: <Widget>[
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Text(item, style: TextStyle(fontSize: 16.0)),
        Text(charge, style: TextStyle(fontSize: 16.0))
        ],
        ),
        SizedBox(
        height: 10.0,
        ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    Text(dateString,
    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
    Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
    ],
    ),
    ],
    )
    );

  }
}
