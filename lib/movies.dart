import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/faq.dart';
import 'package:untitled/home.dart';
import 'package:untitled/myfiles.dart';
import 'package:untitled/schedule.dart';
import 'package:untitled/showticket.dart';
import 'package:untitled/star.dart';
import 'package:untitled/ticket.dart';
import 'package:untitled/vote.dart';

String _selectedMenu = '';

enum Menu { itemOne, itemTwo, itemThree}

class Movies extends StatefulWidget{

  const Movies({super.key});

  @override
  State<Movies> createState() => MoviesPage();

}

class MoviesPage extends State<Movies>{

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
      //      Flexible(
      //          child:PopupMenuButton<Menu>(
      //           icon: Icon(
      //               Icons.menu,
      //               size:20 ,
      //               color: Colors.white,
      //
      //             ) ,
      //                // Callback that sets the selected popup menu item.
      //                onSelected: (Menu item) {
      //                  setState(() {
      //                    _selectedMenu = item.name;
      //
      //                  });
      //                },
      //
      //
      //
      //
      //                itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
      //                  const PopupMenuItem<Menu>(
      //                    value: Menu.itemOne,
      //                    child: Text('Get Tickets'),
      //                  ),
      //                  const PopupMenuItem<Menu>(
      //                    value: Menu.itemTwo,
      //                    child: Text('Vote'),
      //                  ),
      //                  const PopupMenuItem<Menu>(
      //                    value: Menu.itemThree,
      //                    child: Text('FAQS'),
      //                  ),
      //
      //                ],
      //            enabled: true,
      //
      //
      //
      //
      //
      //
      //              ),
      //
      //          ),
      //
      //
      //
      //       Flexible(
      //           child:   IconButton(
      //             onPressed: (){},
      //             icon: Icon(Icons.search),
      //             color: Colors.white,
      //           ),
      //
      //       ),
      //
      //
      //     ],
      //   ),
      //   actions: [
      //     IconButton(
      //         onPressed: (){},
      //         icon: Icon(Icons.notifications),
      //       color: Colors.white,
      //     )
      //   ],
      //
      // ),

      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor:Color(0xFFCD0808),
        unselectedItemColor: Colors.white,
        selectedItemColor:Colors.black54 ,
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket),
              label: "Schedules"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: "Schedules"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),


          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: "Faq"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Star"
          ),




        ],
      ),
    );
  }
}