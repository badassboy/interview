import 'package:flutter/material.dart';

import 'assets/images/images_constants.dart';

Widget FirstCard(){
  return Card(
    elevation: 10,
    child:  Container(
      // height: 150,
    padding: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.white,
        )
      ]
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Ist aspect of photo and text description
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Container(
              //   height: 100.0,
              //   width: 100.0,
              //   decoration: BoxDecoration(
              //       shape: BoxShape.rectangle,
              //       image: DecorationImage(
              //         image: Image.asset(profileImage).image,
              //         fit: BoxFit.contain,
              //       )
              //   ),
              // ),

              SizedBox(width: 5,),

              Container(
                padding: EdgeInsets.only(left: 5, ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                        margin: EdgeInsets.only(top: 0.8),
                      child:  RichText(
                        text: const TextSpan(
                            text: "Kweku ",style:TextStyle(
                            fontSize:18
                            ,color:Color.fromRGBO(10, 10, 100, 0.8)
                        ),
                            children: [

                              TextSpan(
                                  text: "Amo-Mensah",style:TextStyle(
                                  fontSize:18,fontWeight:FontWeight.bold
                                  ,color:Color.fromRGBO(10, 10, 100, 0.8)
                              )
                                //
                              )

                            ]

                        ),
                      ),
                    ),



                    Padding(
                        padding: EdgeInsets.only(left: 2, top: 2),
                      child:  const Text("Platinum Member",
                          style:TextStyle(
                          fontSize:13,
                              fontWeight:FontWeight.bold
                          ,color:Color.fromRGBO(10, 10, 10, 0.8)
                      )),
                    ),



                  ],
                ),
              )

            ],

          ),

          SizedBox(height: 13,),

          //   end of  photo and text description

          // text descripion
          Container(

            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [Text("100",style:TextStyle(
                      fontWeight: FontWeight.bold,fontSize:16,color:Colors.black87
                  )), Text("Jobs")],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text("\$200K",style:TextStyle(
                        fontWeight: FontWeight.bold,fontSize:16,color:Colors.black87
                    )),
                    Text("cost"),
                  ],
                ),

                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [Text("\$2",style:TextStyle(
                      fontWeight: FontWeight.bold,fontSize:16,color:Colors.black87
                  )), Text("nte")],
                ),
              ],
            )
          ),

        SizedBox(height: 25,)


        //   end of text description




        ],
      ),




    ),

  );
}