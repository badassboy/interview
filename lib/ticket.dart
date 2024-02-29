import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _selectedMenu = '';
enum Menu { itemOne, itemTwo, itemThree}

class Ticket extends StatefulWidget{
  @override
  State<Ticket> createState() {
   return TicketPage();
  }

}

class TicketPage extends State<Ticket> {
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

      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF1D1D1D),
          height: 1000,
          child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            // horizontal scrollview of the type of movie
            Container(
              width: 400,
              height: 30,

              child: Flexible(
                fit: FlexFit.loose,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    
                    ElevatedButton(
                        onPressed: (){},
                        child: Text(
                            "Comedy",
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
                        child: Text("Drame",
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF313131)
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Action"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF313131)
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Action"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF313131)
                      ),
                    ),

                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Action")
                    ),
                    SizedBox(width: 7,),

                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Action")
                    ),
                  ],

                ) ,
              ),
            ),





            // horizontal scrollable

            // SizedBox(height: 10,),

            // display movies
            SizedBox(

              child:  GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[



                  Container(

                height: 800,
                width: 800,
                // color: Colors.yellow,

                child: Padding(
                  padding: EdgeInsets.only(),
                  child:  Column(
                    children: [

                     Flexible(
                         child:
                         Container(

                           decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage("lib/assets/images/owner.png"),
                                   fit: BoxFit.fill,


                               )
                           ),

                         ),
                     ),





                          Text(
                            "Calamity Jane",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Icon(
                                  Icons.schedule,
                                  size: 13,
                                  color: Colors.white,
                                ),

                                Text(
                                  "1:10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),


                              ],
                            ) ,
                          )







                    ],
                  ),

                ),

                   ),

                  Container(

                    height: 800,
                    width: 800,
                    // color: Colors.yellow,

                    child: Padding(
                      padding: EdgeInsets.only(),
                      child:  Column(
                        children: [

                          Flexible(
                            child:
                            Container(

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("lib/assets/images/owner.png"),
                                    fit: BoxFit.fill,


                                  )
                              ),

                            ),
                          ),





                          Text(
                            "Calamity Jane",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Icon(
                                  Icons.schedule,
                                  size: 13,
                                  color: Colors.white,
                                ),

                                Text(
                                  "1:10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),


                              ],
                            ) ,
                          )







                        ],
                      ),

                    ),

                  ),
                  Container(

                    height: 800,
                    width: 800,
                    // color: Colors.yellow,

                    child: Padding(
                      padding: EdgeInsets.only(),
                      child:  Column(
                        children: [

                          Flexible(
                            child:
                            Container(

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("lib/assets/images/owner.png"),
                                    fit: BoxFit.fill,


                                  )
                              ),

                            ),
                          ),





                          Text(
                            "Calamity Jane",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Icon(
                                  Icons.schedule,
                                  size: 13,
                                  color: Colors.white,
                                ),

                                Text(
                                  "1:10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),


                              ],
                            ) ,
                          )







                        ],
                      ),

                    ),

                  ),
                  Container(

                    height: 800,
                    width: 800,
                    // color: Colors.yellow,

                    child: Padding(
                      padding: EdgeInsets.only(),
                      child:  Column(
                        children: [

                          Flexible(
                            child:
                            Container(

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("lib/assets/images/owner.png"),
                                    fit: BoxFit.fill,


                                  )
                              ),

                            ),
                          ),





                          Text(
                            "Calamity Jane",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Icon(
                                  Icons.schedule,
                                  size: 13,
                                  color: Colors.white,
                                ),

                                Text(
                                  "1:10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),


                              ],
                            ) ,
                          )







                        ],
                      ),

                    ),

                  ),
                  Container(

                    height: 800,
                    width: 800,
                    // color: Colors.yellow,

                    child: Padding(
                      padding: EdgeInsets.only(),
                      child:  Column(
                        children: [

                          Flexible(
                            child:
                            Container(

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("lib/assets/images/owner.png"),
                                    fit: BoxFit.fill,


                                  )
                              ),

                            ),
                          ),





                          Text(
                            "Calamity Jane",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Icon(
                                  Icons.schedule,
                                  size: 13,
                                  color: Colors.white,
                                ),

                                Text(
                                  "1:10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),


                              ],
                            ) ,
                          )







                        ],
                      ),

                    ),

                  ),
                  Container(

                    height: 800,
                    width: 800,
                    // color: Colors.yellow,

                    child: Padding(
                      padding: EdgeInsets.only(),
                      child:  Column(
                        children: [

                          Flexible(
                            child:
                            Container(

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("lib/assets/images/owner.png"),
                                    fit: BoxFit.fill,


                                  )
                              ),

                            ),
                          ),





                          Text(
                            "Calamity Jane",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Icon(
                                  Icons.schedule,
                                  size: 13,
                                  color: Colors.white,
                                ),

                                Text(
                                  "1:10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),


                              ],
                            ) ,
                          )







                        ],
                      ),

                    ),

                  ),
                  Container(

                    height: 800,
                    width: 800,
                    // color: Colors.yellow,

                    child: Padding(
                      padding: EdgeInsets.only(),
                      child:  Column(
                        children: [

                          Flexible(
                            child:
                            Container(

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("lib/assets/images/owner.png"),
                                    fit: BoxFit.fill,


                                  )
                              ),

                            ),
                          ),





                          Text(
                            "Calamity Jane",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Icon(
                                  Icons.schedule,
                                  size: 13,
                                  color: Colors.white,
                                ),

                                Text(
                                  "1:10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ),


                              ],
                            ) ,
                          )







                        ],
                      ),

                    ),

                  ),























                ],
              ),
            )
          ],
        ),
        ),




      ),
    );
  }

}