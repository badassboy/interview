import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _selectedMenu = '';
enum Menu { itemOne, itemTwo, itemThree}
class Home extends StatefulWidget{
  @override
  State<Home> createState() {
    return HomePage();
  }

}


class HomePage extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
         color: Color(0xFF1D1D1D),
         height: 700,
       child: Center(

         child: Column(
           children: [
             Padding(
                 padding: EdgeInsets.only(left: 5,right: 10,top: 250),
                 child:  Container(
                   width: 300,
                   height: 150,
                   child: TextField(
                     maxLines: null,
                     minLines: 7,
                     keyboardType: TextInputType.multiline,
                     decoration: InputDecoration(
                         filled: true,
                         fillColor: Color(0xFF312F2F),
                         focusColor: Color(0xFFCD0808)
                     ),
                   ),
                 )
             ),
             SizedBox(height: 10,),

             TextButton(
               onPressed: (){

               },
               child: Text(
                 "Get Tickets",
                 style: TextStyle(
                     color: Color(0xFFCD0808)
                 ),
               ),
               style: ButtonStyle(
                 side: MaterialStateProperty.all(
                     BorderSide(color:Color(0xFFCD0808) )
                 ),
                 fixedSize: MaterialStateProperty.all(
                   Size(150, 30)
                 ),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(4.0)),
                 ),

               ),

             )

           ],
         ),
       )
     ),

   );
  }

}