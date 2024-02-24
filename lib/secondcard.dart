import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

Widget SecondCard(){
  return Card(
    elevation: 10,
    child:Container(
        height: 270,
        width: double.infinity,
        decoration: BoxDecoration(
          //color:const Color.fromRGBO(240, 240, 255, 0.9),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: <Color>[
                Color(0xffb3d9ff),
                Color(0xffffffff)
              ],


          ),
          boxShadow:const[  BoxShadow(
              blurStyle: BlurStyle.outer,
              // color: Colors.white,
              blurRadius: 2)],
          borderRadius: BorderRadius.circular(
              10
          ),

        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
              width: 180,
              padding: EdgeInsets.only(left: 28),
              // decoration: const BoxDecoration(
              //  color: Color.fromRGBO(240, 240, 255, 0.9)
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  RichText(
                      text: const TextSpan(
                          text: "projected ",style: TextStyle(
                          color: Colors.black87
                      ),
                          children: [TextSpan(
                              text: "profit",style: TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.black
                          )

                          )])),

                  const SizedBox(height: 10,),

                  Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:const Color.fromRGBO(66, 239, 170, 0.8)
                      ),
                      child:const Text("Year 1",style:TextStyle(
                          fontSize:14,color:Colors.black87
                      ))
                  ),

                  const Text("200,000",style:TextStyle(
                      fontSize:20,letterSpacing: 1.5,color:Colors.black87,
                      fontWeight: FontWeight.w400
                  )),
                  const SizedBox(height: 15,),


                  Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:const Color.fromRGBO(66, 239, 170, 0.8)
                      ),
                      child:const Text("Year 2",style:TextStyle(
                          fontSize:14,color:Colors.black87
                      ))
                  ),
                  const Text("200,000",style:TextStyle(
                      fontSize:20,letterSpacing: 1.5,color:Colors.black87,
                      fontWeight: FontWeight.w400
                  )),
                  const SizedBox(height: 15,),


                  Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:const Color.fromRGBO(66, 239, 170, 0.8)
                      ),
                      child:const Text("Year 3",style:TextStyle(
                          fontSize:14,color:Colors.black87
                      ))
                  ),
                  const Text("200,000",style:TextStyle(
                      fontSize:20,letterSpacing: 1.5,color:Colors.black87,
                      fontWeight: FontWeight.w400
                  )),
                  const SizedBox(height: 10,),

                  // const SizedBox(width: 30,),

                  // Text("ama"),

                ],),
            ),
            const SizedBox(width:20),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 70.0,
                  lineWidth: 20.0,
                  percent: 0.9,

                  center: const Text(
                      "80%",


                        style: TextStyle(

                          fontSize:25,
                          color:Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                  ),


                        //
                        // )





                  progressColor:const Color.fromRGBO(10, 10, 100, 0.8),
                ),

                SizedBox(height: 10,),
                const Text("progress")
              ],
            )
          ],
        )
    ),
  );
}