import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home.dart';
import 'package:untitled/movies.dart';
import 'package:untitled/myfiles.dart';
import 'package:untitled/star.dart';
import 'package:untitled/ticket.dart';

String _selectedMenu = '';

enum Menu { itemOne, itemTwo, itemThree}

class Schedule extends StatefulWidget{
  @override
  State<Schedule> createState() {
    return SchedulePage();
  }

}

class SchedulePage extends State<Schedule> {
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
            ),

            IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
            ),

          ],

        ),

      body: SingleChildScrollView(
        child: Container(
          height: 800,
          decoration: BoxDecoration(
            color: Color(0xFF1D1D1D)
          ),
          child: Column(
            children: [

              // page header
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: Row(
                  children: [

                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 12,
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

                        SizedBox(width: 5,),

                        Text(
                          "Schedules",
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

              // display horizontal scroll for days
              Container(
                width: 350,
                height: 30,
                padding: EdgeInsets.only(left:8),

                child: Flexible(
                  fit: FlexFit.loose,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [

                      ElevatedButton(
                        onPressed: (){},
                        child: Text(
                          "Monday",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF313131)
                        ),
                      ),

                      SizedBox(width: 7,),
                      ElevatedButton(
                        onPressed: (){},
                        child: Text("Tuesday",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF313131)
                        ),
                      ),
                      SizedBox(width: 7,),
                      ElevatedButton(
                        onPressed: (){},
                        child: Text("Wednesday"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF313131)
                        ),
                      ),
                      SizedBox(width: 7,),
                      ElevatedButton(
                        onPressed: (){},
                        child: Text("Thursday"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF313131)
                        ),
                      ),
                      SizedBox(width: 7,),

                      ElevatedButton(
                          onPressed: (){},
                          child: Text("Friday")
                      ),
                      SizedBox(width: 7,),

                      ElevatedButton(
                          onPressed: (){},
                          child: Text("Saturday")
                      ),
                    ],

                  ) ,
                ),
              ),

              SizedBox(height: 25,),

              // listview of schedules
              Flexible(
                  child:  ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, position){
                        return  Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0xFF312F2F)
                            ),
                            child: Row(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(left:30,top: 5),
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "American Fiction",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),

                                      Text(
                                        "Mon, 17th Jan,2024",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),

                                      Text(
                                        "2:00pm Silver Bird Cinema",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  )

                                 ,
                                ),

                                SizedBox(width: 20,),

                                Padding(
                                    padding: EdgeInsets.only(left: 25),
                                  child:  TextButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      "View",
                                      style: TextStyle(
                                          color: Color(0xFFCD0808)
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          BorderSide(color:Color(0xFFCD0808) )
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(100, 30)
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4.0)),
                                      ),

                                    ),

                                  ),
                                )




                              ],
                            ),
                          ),
                        );

                      }
                  )
              )
            ],
          ),
        ),
      ),







    );
  }

}