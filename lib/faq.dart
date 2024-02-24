import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/askquestion.dart';

String _selectedMenu = '';
enum Menu { itemOne, itemTwo, itemThree}

class Faq extends StatefulWidget{
  @override
  State<Faq> createState() {
    return FaqPage();
  }

}

class FaqPage extends State<Faq> {
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
                   child: Text('Get Tickets'),
                 ),
                 const PopupMenuItem<Menu>(
                   value: Menu.itemTwo,
                   child: Text('Vote'),
                 ),
                 const PopupMenuItem<Menu>(
                   value: Menu.itemThree,
                   child: Text('FAQS'),
                 ),

               ],
               enabled: true,






             ),

           ),



           Flexible(
             child:   IconButton(
               onPressed: (){},
               icon: Icon(Icons.home),
               color: Colors.white,
             ),

           ),


         ],
       ),
       actions: [
         IconButton(
           onPressed: (){},
           icon: Icon(Icons.search),
           color: Colors.white,
         )
       ],

     ),

     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Container(
         padding: EdgeInsets.only(top: 5),
         height: 800,
         color: Color(0xFF1D1D1D),
         child: Column(
           children: [

             // header details
             Padding(
                 padding: EdgeInsets.only(left: 10),
               child: Row(
                 children: [
                   IconButton(
                     icon:Icon(
                        Icons.arrow_back_ios_new,
                      size: 13,
                      color: Colors.white,
                    ),
                     onPressed: () {},
                   ),

                   SizedBox(width: 10,),

                   Text(
                     "FAQ",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 14
                     ),
                   )
                 ],
               ),
             ),
           // end of header details


           Padding(
               padding: EdgeInsets.only(bottom: 15.0, top: 15),
             child: Container(
               height: 30,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 color: Color(0xFF312F2F)
               ),
               child: Row(
                 children: [

                   Padding(
                       padding: EdgeInsets.only(left: 13),
                     child: Text(
                       "Are tickets available to purchase for the door",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 12,
                       ),
                     ) ,
                   ),


                   IconButton(
                     onPressed: (){},
                     icon: Icon(Icons.keyboard_arrow_down_outlined),
                     iconSize: 20,
                     color: Colors.white,
                   )
                 ],
               ),
             ),
           ),

             Padding(
               padding: EdgeInsets.only(bottom: 15.0),
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     color: Color(0xFF312F2F)
                 ),
                 child: Row(
                   children: [

                     Padding(
                       padding: EdgeInsets.only(left: 13),
                       child: Text(
                         "Are tickets available to purchase for the door",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 12,
                         ),
                       ) ,
                     ),


                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_down_outlined),
                       iconSize: 20,
                       color: Colors.white,
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 15.0),
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     color: Color(0xFF312F2F)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(left: 13),
                       child: Text(
                         "Are tickets available to purchase for the door",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 12,
                         ),
                       ) ,
                     ),


                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_down_outlined),
                       iconSize: 20,
                       color: Colors.white,
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 15.0),
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     color: Color(0xFF312F2F)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(left: 13),
                       child: Text(
                         "Are tickets available to purchase for the door",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 12,
                         ),
                       ) ,
                     ),


                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_down_outlined),
                       iconSize: 20,
                       color: Colors.white,
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 15.0),
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     color: Color(0xFF312F2F)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(left: 13),
                       child: Text(
                         "Are tickets available to purchase for the door",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 12,
                         ),
                       ) ,
                     ),


                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_down_outlined),
                       iconSize: 20,
                       color: Colors.white,
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 15.0),
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     color: Color(0xFF312F2F)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(left: 13),
                       child: Text(
                         "Are tickets available to purchase for the door",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 12,
                         ),
                       ) ,
                     ),


                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_down_outlined),
                       iconSize: 20,
                       color: Colors.white,
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 15.0),
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     color: Color(0xFF312F2F)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(left: 13),
                       child: Text(
                         "Are tickets available to purchase for the door",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 12,
                         ),
                       ) ,
                     ),


                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_down_outlined),
                       iconSize: 20,
                       color: Colors.white,
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 10.0),
               child: Container(
                 height: 30,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     color: Color(0xFF312F2F)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(left: 13),
                       child: Text(
                         "Are tickets available to purchase for the door",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 12,
                         ),
                       ) ,
                     ),


                     IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.keyboard_arrow_down_outlined),
                       iconSize: 20,
                       color: Colors.white,
                     )
                   ],
                 ),
               ),
             ),



             // text button to add questions
             TextButton(
                 onPressed: (){
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>AskQuestion()));
                 },
                 child: Text(
                     "Add a Question",
                   style: TextStyle(
                     color: Color(0xFFCD0808)
                   ),
                 ),
               style: ButtonStyle(
                 side: MaterialStateProperty.all(
                   BorderSide(color:Color(0xFFCD0808) )
                 ),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(4.0)),
                 ),

               ),

             )









           ],
         ),
       ),

     ),

   );
  }

}