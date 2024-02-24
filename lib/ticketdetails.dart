import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/buyticket.dart';
String _selectedMenu = '';

enum Menu { itemOne, itemTwo, itemThree}

class TicketDetails extends StatefulWidget{
  @override
  State<TicketDetails> createState() {
    return TicketDetailsPage();
  }

}

class TicketDetailsPage extends State<TicketDetails>{
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
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 13,
                          )
                      ),

                      IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 13,
                          )
                      ),

                      // SizedBox(width: 3,),
                      Container(
                        padding: EdgeInsets.only(),
                        child: Text(
                          " Your Tickets",
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
                    child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) => Divider(
                        height: 3,
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.red,
                      ),
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          padding: EdgeInsets.only(bottom: 15,left: 30,top: 10),
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
                                    fontSize: 12
                                ),
                              ),

                              Text(
                                "2:00pm Silver Bird Cinema",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                ),
                              ),
                              SizedBox(height: 5,),

                              Row(
                                children: [
                                  Text(
                                    "\$10",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white
                                    ),
                                  ),

                                  SizedBox(width: 2,),

                                  Text(
                                    "Qty",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white
                                    ),
                                  ),
                                  SizedBox(width: 5,),

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


                                ],
                              ),

                              SizedBox(height: 5,),

                              SizedBox(
                                height: 25,
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => BuyTicket()));
                                  },
                                  child: Text(
                                    "Total: \$20",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF1D1D1D),
                                      side: BorderSide(color: Color(0xFFD9D9D9), width: 0)


                                  ),
                                ),
                              )
                            ],
                          ),




                        );
                      },


                    )
                ),
                
               Padding(
                   padding: EdgeInsets.only(left: 50,bottom: 70,right: 15),
                 child: Align(
                   alignment: Alignment.bottomRight,
                   child: Column(

                     children: [
                       SizedBox(
                         height: 25,
                         child: ElevatedButton(
                           onPressed: (){},
                           child: Text(
                             "\$80",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20
                             ),
                           ),
                           style: ElevatedButton.styleFrom(
                               backgroundColor: Color(0xFF1D1D1D),
                               side: BorderSide(color: Color(0xFFD9D9D9), width: 0)


                           ),
                         ),
                       ),
                       SizedBox(height: 3,),

                       SizedBox(
                         height: 25,
                         child: ElevatedButton(
                           onPressed: (){

                           },
                           child: Text(
                             "Pay",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 10
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

               )
                

              ],
            )


        )

    );
  }
}