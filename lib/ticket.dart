import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF1D1D1D),
          child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            // horizontal scrollview of the type of movie
            Container(
              width: 500,
              height: 50,

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
              height: 500,
              child:  GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[

                  Container(
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "lib/assets/images/owner.png",

                          ),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "lib/assets/images/owner.png",

                          ),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "lib/assets/images/owner.png",

                          ),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "lib/assets/images/owner.png",

                          ),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "lib/assets/images/owner.png",

                          ),
                          fit: BoxFit.cover,
                        )
                    ),

                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    // color: Colors.teal[100],
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "lib/assets/images/owner.png",

                          ),
                          fit: BoxFit.cover,
                        )
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