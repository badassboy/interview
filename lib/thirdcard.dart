import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ThirdCard(){
  return Card(
    elevation: 10,
    color: Colors.white70,
    shadowColor: Colors.white,
    child:  Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: [

          const SizedBox(height:20),

          const Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              Column(
                children: [
                  Text("rating",style:TextStyle(
                      fontSize:18,fontWeight: FontWeight.bold,color:Colors.black
                  )),
                  SizedBox(
                    height: 8,
                  ),
                  Text("4.5")
                ],
              ),

              Column(
                children: [
                  Text("industry",style:TextStyle(
                      fontSize:18,fontWeight: FontWeight.bold,color:Colors.black
                  )),
                  SizedBox(
                    height: 8,
                  ),
                  Text("technology")
                ],
              ),

              Column(
                children: [
                  Text("country",style:TextStyle(
                      fontSize:18,fontWeight: FontWeight.bold,color:Colors.black
                  )),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Ghana")
                ],
              ),
            ],
          ),

          const SizedBox(height:20),

          Padding(
              padding: EdgeInsets.only(left: 0),
            child:  Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [


                Container(
                    width: 110,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color:const Color.fromRGBO(10, 10, 100, 0.8),
                            width: 2
                        )
                    ),
                    child:const Center(
                      child: Text("Details"),
                    )
                ),
                Container(
                    width: 110,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: Colors.green
                        )
                    ),
                    child:const Center(
                      child: Text("Contribute",style:TextStyle(
                          fontSize:16,fontWeight: FontWeight.bold
                          ,color: Color.fromRGBO(10, 10, 100, 0.8)
                      )),
                    )
                ),
              ],
            ),
          ),


          const SizedBox(height: 10,)

        ],
      ),
    )
  );
}