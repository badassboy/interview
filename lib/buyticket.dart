import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ticketdetails.dart';
String _selectedMenu = '';

enum Menu { itemOne, itemTwo, itemThree}

class BuyTicket extends StatefulWidget{
  @override
  State<BuyTicket> createState() {
    return BuyTicketPage();
  }

}

class BuyTicketPage extends State<BuyTicket>{
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
            ),

            IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
            ),


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
                          "Buy Tickets",
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
                              padding: EdgeInsets.only(left: 30, bottom: 15),
                              child: Column(
                                children: [
                                  // content
                                  Row(
                                    children: [

                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF312F2F),

                                        ),
                                      ),

                                      SizedBox(width: 12,),

                                      Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "american fiction",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold

                                              ),
                                            ),

                                            Text(
                                              "17th December,2024",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),
                                            ),

                                            Text(
                                              "2:00pm Silver Bird conference",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,

                                              ),
                                            ),

                                            Text(
                                              "10",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),
                                            ),


                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                //   end of content

                                //   extra
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Row(
                                      children: [

                                        Text(
                                            "Qty",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white
                                          ),
                                        ),
                                        SizedBox(width: 2,),

                                        Icon(
                                            Icons.arrow_back_ios,
                                          size: 10,
                                          color: Colors.white,
                                        ),

                                        Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                          ),
                                        ),

                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 10,
                                          color: Colors.white,
                                        ),

                                        Text("Qty"),

                                        Container(
                                          height: 30,
                                          // width: 50,
                                          // padding: EdgeInsets.only(right: 10),
                                          margin: EdgeInsets.only(right: 10),


                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) =>TicketDetails()));
                                            },
                                            child: Text(
                                              "Buy",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                fontSize: 11
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
                            // end of container 1
                            Container(
                              padding: EdgeInsets.only(left: 30, bottom: 15,top: 10),
                              child: Column(
                                children: [
                                  // content
                                  Row(
                                    children: [

                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF312F2F),

                                        ),
                                      ),

                                      SizedBox(width: 12,),

                                      Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "american fiction",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold

                                              ),
                                            ),

                                            Text(
                                              "17th December,2024",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),
                                            ),

                                            Text(
                                              "2:00pm Silver Bird conference",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,

                                              ),
                                            ),

                                            Text(
                                              "10",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),
                                            ),


                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  //   end of content

                                  //   extra
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Row(
                                      children: [

                                        Text(
                                          "Qty",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(width: 2,),

                                        Icon(
                                          Icons.arrow_back_ios,
                                          size: 10,
                                          color: Colors.white,
                                        ),

                                        Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                          ),
                                        ),

                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 10,
                                          color: Colors.white,
                                        ),

                                        Text("Qty"),

                                        Container(
                                          height: 30,
                                          // width: 50,
                                          // padding: EdgeInsets.only(right: 10),
                                          margin: EdgeInsets.only(right: 10),


                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => BuyTicket()));
                                            },
                                            child: Text(
                                              "Buy",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11
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
                            // end of container 2

                            Container(
                              padding: EdgeInsets.only(left: 30, bottom: 15,top: 10),
                              child: Column(
                                children: [
                                  // content
                                  Row(
                                    children: [

                                      Container(
                                        width: 80,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF312F2F),

                                        ),
                                      ),

                                      SizedBox(width: 12,),

                                      Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "american fiction",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold

                                              ),
                                            ),

                                            Text(
                                              "17th December,2024",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),
                                            ),

                                            Text(
                                              "2:00pm Silver Bird conference",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,

                                              ),
                                            ),

                                            Text(
                                              "10",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10
                                              ),
                                            ),


                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  //   end of content

                                  //   extra
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Row(
                                      children: [

                                        Text(
                                          "Qty",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(width: 2,),

                                        Icon(
                                          Icons.arrow_back_ios,
                                          size: 10,
                                          color: Colors.white,
                                        ),

                                        Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                          ),
                                        ),

                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 10,
                                          color: Colors.white,
                                        ),

                                        Text("Qty"),

                                        Container(
                                          height: 30,
                                          // width: 50,
                                          // padding: EdgeInsets.only(right: 10),
                                          margin: EdgeInsets.only(right: 10),


                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => BuyTicket()));
                                            },
                                            child: Text(
                                              "Buy",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11
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
                          //   end of container 3





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