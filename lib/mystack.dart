import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/firstcard.dart';
import 'package:untitled/secondcard.dart';
import 'package:untitled/thirdcard.dart';

import 'assets/images/images_constants.dart';

Widget displayStack(){
  return Stack(
    children: [

      Container(
            width: double.infinity,
            height: 200,
            child: ClipRect(
                child: Image.asset(
                  houseImage,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                )),
          ),

          Padding(
              padding: EdgeInsets.only(top: 200),
            child:   Container(
              width: double.infinity,
              height: 700,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [

                FirstCard(),
                  SecondCard(),
                  ThirdCard(),



                ],

              ),




            ),
          ),
      // end of Padding


      Positioned(
        bottom: 650,
          left: 20,
          child:  Container(
          height: 100.0,
          width: 70.0,

          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                width: 3,
                color: Colors.white,
              ),
              image: DecorationImage(
                image: Image.asset(profileImage).image,
                fit: BoxFit.cover,
              )
          ),
        ),

      )






    ],



  );
}


//       Container(
// decoration: BoxDecoration(
//     boxShadow:const [
//        BoxShadow(
//           blurStyle: BlurStyle.outer,
//           // color: Colors.white,
//           blurRadius: 2),
//     ],
//     border: Border.all(color: Colors.white, width: 2),
//     borderRadius: const BorderRadius.only(
//         bottomLeft: Radius.circular(20),
//         bottomRight: Radius.circular(20)),
//         ),
// child: Column(
//   mainAxisAlignment: MainAxisAlignment.start,
//   children: [
//     Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(
//           width: 20,
//         ),
//         Container(
//           width: 80,
//           height: 80,
//           decoration: BoxDecoration(
//               color: Colors.black26,
//               border: Border.all(
//                 width: 2,
//                 color: Colors.white,
//               ),
//               image: DecorationImage(
//                   image: Image.asset(profileImage).image)),
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//          Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//               RichText(
//         text: const TextSpan(
//           text: "Kweku ",style:TextStyle(
//             fontSize:18
//             ,color:Color.fromRGBO(10, 10, 100, 0.8)
//           ),
//           children: [TextSpan(
//             text: "Amo-Mensah",style:TextStyle(
//             fontSize:18,fontWeight:FontWeight.bold
//             ,color:Color.fromRGBO(10, 10, 100, 0.8)
//           )
//
//           )])),
//
//           const Text("Platinum Member",style:TextStyle(
//             fontSize:12,fontWeight:FontWeight.bold
//             ,color:Color.fromRGBO(10, 10, 10, 0.8)
//           )),
//         ])
//       ],
//     ),
//     const SizedBox(height:10),
//     const Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Column(
//           children: [Text("100",style:TextStyle(
//             fontWeight: FontWeight.bold,fontSize:16,color:Colors.black87
//           )), Text("Jobs")],
//         ),
//         SizedBox(
//           width: 40,
//         ),
//         Column(
//           children: [
//             Text("\$200K",style:TextStyle(
//             fontWeight: FontWeight.bold,fontSize:16,color:Colors.black87
//           )),
//             Text("cost"),
//           ],
//         ),
//         SizedBox(
//           width: 40,
//         ),
//         Column(
//           children: [Text("\$2",style:TextStyle(
//             fontWeight: FontWeight.bold,fontSize:16,color:Colors.black87
//           )), Text("nte")],
//         ),
//       ],
//     ),
//     const SizedBox(height:30)
//   ],
// ),
//       ),