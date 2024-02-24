import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/buyticket.dart';

String _selectedMenu = '';

enum Menu { itemOne, itemTwo, itemThree}

class ShowTicket extends StatefulWidget{
  @override
  State<ShowTicket> createState() {
    return ShowTicketPage();
  }

}

class ShowTicketPage extends State<ShowTicket>{
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



             // Flexible(
             //   child:   IconButton(
             //     onPressed: (){},
             //     icon: Icon(Icons.search),
             //     color: Colors.white,
             //   ),
             //
             // ),


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

     body: Container(
       padding: EdgeInsets.only(bottom: 10),
       color: Color(0xFF1D1D1D),
       child: Column(
         children: [

           // page header
           Padding(
               padding: EdgeInsets.only(top: 10, bottom: 10,left: 5),
             child: Row(
               children: [
                 IconButton(
                     onPressed: (){},
                     icon: Icon(
                         Icons.arrow_back_ios,
                       color: Colors.white,
                     )
                 ),
                 // SizedBox(width: 3,),
                 Container(
                     padding: EdgeInsets.only(bottom: 5),
                   child: Text(
                     "Tickets",
                     style: TextStyle(
                         color: Colors.white,
                         decoration: TextDecoration.underline,
                         decorationColor: Color(0xFFCD0808)
                     ),
                   ),
                 )
               ],
             ),
           ),


           // display tickets
           Flexible(
               child: ListView(
                 children: ListTile.divideTiles( //          <-- ListTile.divideTiles
                     context: context,
                     color: Color(0xFFCD0808),
                     tiles: [

                       Container(
                         padding: EdgeInsets.only(left: 10, bottom: 15),
                         child: Row(
                           children: [
                             Container(
                               width: 70,
                               height: 70,
                               decoration: BoxDecoration(
                                 color: Color(0xFF312F2F),

                               ),
                             ),
                             SizedBox(width: 12,),

                             Container(
                               child: Column(
                                 children: [
                                   Text(
                                     "american fiction",
                                     style: TextStyle(
                                         color: Colors.white
                                     ),
                                   ),

                                   Text(
                                     "17th December,2024",
                                     style: TextStyle(
                                         color: Colors.white
                                     ),
                                   ),

                                   SizedBox(
                                     height: 25,
                                     child: ElevatedButton(
                                       onPressed: (){
                                         Navigator.push(context,
                                             MaterialPageRoute(builder: (context) => BuyTicket()));
                                       },
                                       child: Text(
                                         "Buy Ticket",
                                         style: TextStyle(
                                             color: Colors.white
                                         ),
                                       ),
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: Color(0xFFCD0808),

                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             )
                           ],
                         ),

                       ),

                       Container(
                         padding: EdgeInsets.only(left: 10, bottom: 15,top: 15),
                         child: Row(
                           children: [
                             Container(
                               width: 70,
                               height: 70,
                               decoration: BoxDecoration(
                                 color: Color(0xFF312F2F),

                               ),
                             ),
                             SizedBox(width: 12,),

                             Container(
                               child: Column(
                                 children: [
                                   Text(
                                     "american fiction",
                                     style: TextStyle(
                                         color: Colors.white
                                     ),
                                   ),

                                   Text(
                                     "17th December,2024",
                                     style: TextStyle(
                                         color: Colors.white
                                     ),
                                   ),

                                   SizedBox(
                                     height: 25,
                                     child: ElevatedButton(
                                       onPressed: (){},
                                       child: Text(
                                         "Buy Ticket",
                                         style: TextStyle(
                                             color: Colors.white
                                         ),
                                       ),
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: Color(0xFFCD0808),

                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             )
                           ],
                         ),

                       ),

                       Container(
                         padding: EdgeInsets.only(left: 10, bottom: 15,top: 15),
                         child: Row(
                           children: [
                             Container(
                               width: 70,
                               height: 70,
                               decoration: BoxDecoration(
                                 color: Color(0xFF312F2F),

                               ),
                             ),
                             SizedBox(width: 12,),

                             Container(

                               child: Column(
                                 children: [
                                   Text(
                                     "american fiction",
                                     style: TextStyle(
                                         color: Colors.white
                                     ),
                                   ),

                                   Text(
                                     "17th December,2024",
                                     style: TextStyle(
                                         color: Colors.white
                                     ),
                                   ),

                                   SizedBox(
                                     height: 25,
                                     child: ElevatedButton(
                                       onPressed: (){},
                                       child: Text(
                                         "Buy Ticket",
                                         style: TextStyle(
                                             color: Colors.white
                                         ),
                                       ),
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: Color(0xFFCD0808),

                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             )
                           ],
                         ),

                       ),

                     ]
                 ).toList(),
               )
           )
          ,

         ],
       )


     )

   );
  }
}