import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home.dart';
import 'package:untitled/schedule.dart';
import 'package:untitled/star.dart';
import 'package:untitled/ticket.dart';

String _selectedMenu = '';
enum Menu { itemOne, itemTwo, itemThree}

class MyFiles extends StatefulWidget{
  @override
  State<MyFiles> createState() {
    return MyFilesPage();
  }

}

class MyFilesPage extends State<MyFiles> {
  int _selectedIndex = 0;

  List<Widget> _pages = <Widget>[
    Ticket(),
    Schedule(),
    Home(),
    MyFiles(),

    Star(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // appBar: AppBar(
     //   centerTitle: true,
     //   backgroundColor: Color(0xFF1D1D1D),
     //   title: Text("demo"),
     //   leading: Row(
     //     children: [
     //
     //       Flexible(
     //         child:PopupMenuButton<Menu>(
     //           icon: Icon(
     //             Icons.menu,
     //             size:20 ,
     //             color: Colors.white,
     //
     //           ) ,
     //           // Callback that sets the selected popup menu item.
     //           onSelected: (Menu item) {
     //             setState(() {
     //               _selectedMenu = item.name;
     //
     //             });
     //           },
     //
     //
     //
     //
     //           itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
     //             const PopupMenuItem<Menu>(
     //               value: Menu.itemOne,
     //               child: Text('Get Tickets'),
     //             ),
     //             const PopupMenuItem<Menu>(
     //               value: Menu.itemTwo,
     //               child: Text('Vote'),
     //             ),
     //             const PopupMenuItem<Menu>(
     //               value: Menu.itemThree,
     //               child: Text('FAQS'),
     //             ),
     //
     //           ],
     //           enabled: true,
     //
     //         ),
     //
     //       ),
     //
     //
     //
     //       Flexible(
     //         child:   IconButton(
     //           onPressed: (){},
     //           icon: Icon(Icons.home),
     //           color: Colors.white,
     //         ),
     //
     //       ),
     //
     //
     //     ],
     //   ),
     //   actions: [
     //     IconButton(
     //       onPressed: (){},
     //       icon: Icon(Icons.search),
     //       color: Colors.white,
     //     ),
     //
     //     IconButton(
     //       onPressed: (){},
     //       icon: Icon(Icons.shopping_cart),
     //       color: Colors.white,
     //     ),
     //
     //   ],
     //
     // ),

     body: SingleChildScrollView(
       child: Container(
         height: 700,
         decoration: BoxDecoration(
             color: Color(0xFF1D1D1D)
         ),
         child: Column(
           children: [
             Padding(
               padding: EdgeInsets.only(left: 10, bottom: 10),
               child: Row(
                 children: [

                   Icon(
                     Icons.arrow_back_ios_new,
                     color: Colors.white,
                     size: 14,
                   ),
                   //   end of icon
                   SizedBox(width: 15,),

                   Row(
                     children: [
                       Icon(
                         Icons.event_note,
                         color: Colors.white,
                         size: 17,
                       ),

                       SizedBox(width: 10,),

                       Text(
                         "Sponsors",
                         style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 14
                         ),
                       ),


                     ],
                   )



                 ],
               ),
             ),
           ],
         ),
       ),
     ),

   //   bottom navigationbar
   //   bottomNavigationBar: BottomNavigationBar(
   //     showSelectedLabels: false,
   //     showUnselectedLabels: false,
   //     currentIndex: _selectedIndex,
   //     onTap: _onItemTapped,
   //     backgroundColor:Color(0xFFCD0808),
   //     type: BottomNavigationBarType.fixed,
   //     unselectedItemColor: Colors.white,
   //     selectedItemColor:Colors.white ,
   //     items: <BottomNavigationBarItem>[
   //
   //       BottomNavigationBarItem(
   //           icon: Icon(Icons.airplane_ticket),
   //           label: "Schedules"
   //       ),
   //
   //       BottomNavigationBarItem(
   //           icon: Icon(Icons.event_note),
   //           label: "Schedules"
   //       ),
   //
   //       BottomNavigationBarItem(
   //           icon: Icon(Icons.home),
   //           label: "Vote"
   //       ),
   //
   //
   //       BottomNavigationBarItem(
   //           icon: Icon(Icons.file_copy),
   //           label: "Faq"
   //       ),
   //
   //       BottomNavigationBarItem(
   //           icon: Icon(Icons.star),
   //           label: "Star"
   //       ),
   //
   //
   //
   //
   //     ],
   //   ),

   );
  }

}