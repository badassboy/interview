import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/myfiles.dart';
import 'package:untitled/schedule.dart';
import 'package:untitled/star.dart';
import 'package:untitled/ticket.dart';

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
     appBar: AppBar(
       centerTitle: true,
       backgroundColor: Color(0xFF1D1D1D),
       title: Text("demo"),
       leading: Row(
         children: [

           Flexible(

             child:PopupMenuButton<Menu>(
               icon: Icon(
                 Icons.menu,
                 size:20 ,
                 color: Colors.white,

               ) ,
               // Callback that sets the selected popup menu item.
               onSelected: (Menu item) {
                 setState(() {
                   _selectedMenu = item.name;

                 });
               },




               itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                 const PopupMenuItem<Menu>(
                   value: Menu.itemOne,
                   child: Text("Get tickets",
                     style: TextStyle(
                       color: Color(0xFFCD0808)
                     ),
                   )

                   // child: Text('Get Tickets'),
                 ),
                 const PopupMenuItem<Menu>(
                   value: Menu.itemTwo,
                   child: Text('Vote',
                     style: TextStyle(
                         color: Color(0xFFCD0808)
                     ),

                   ),
                 ),
                 const PopupMenuItem<Menu>(
                   value: Menu.itemThree,
                   child: Text('FAQS',
                     style: TextStyle(
                         color: Color(0xFFCD0808),
                       fontSize: 12
                     ),),
                 ),

               ],
               enabled: true,






             ),

           ),



           Flexible(
             child:   IconButton(
               onPressed: (){},
               icon: Icon(Icons.search),
               color: Colors.white,
             ),

           ),


         ],
       ),
       actions: [
         IconButton(
           onPressed: (){},
           icon: Icon(Icons.notifications),
           color: Colors.white,
         )
       ],

     ),
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