import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _selectedMenu = '';
enum Menu { itemOne, itemTwo, itemThree}

class MovieDetails extends StatefulWidget{
  @override
  State<MovieDetails> createState() {
    return MovieDetailsPage();
  }

}

class MovieDetailsPage extends State<MovieDetails>{
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
        child: Container(
          height: 900,
          decoration: BoxDecoration(
            color: Color(0xFF1D1D1D)
          ),
          child: Column(
            children: [
              // header content
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

                    Text(
                      "Movies",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 14
                      ),
                    )
                  ],
                ),
              ),

              //  display movie content
              Padding(
                  padding: EdgeInsets.only(top: 40),
                child:  Row(

                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        height: 140,
                        width: 135,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("lib/assets/images/owner.png"),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),

                    ),
                    SizedBox(width: 15,),

                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Bosco",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          Text(
                            "Release date: Jan,2024",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:12,
                                fontWeight: FontWeight.normal
                            ),
                          ),

                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                size: 13,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "1:02",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal
                                ),
                              ),

                            ],
                          ),


                          Text(
                            "95% like this",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.normal
                            ),
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              ),

            //description section
              Padding(
                  padding: EdgeInsets.only(top: 20,left: 15),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Moview Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ) ,
                      ),

                      Padding(
                          padding: EdgeInsets.only(left: 5,right: 10,top: 5),
                        child:  Container(
                          width: 300,
                          height: 150,
                          child: TextField(
                            maxLines: null,
                            minLines: 4,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF312F2F),
                              focusColor: Color(0xFFCD0808)
                            ),
                          ),
                        )
                      )

                    ],
                  ),
                ),
              ),

            //   casting
              Padding(
                  padding: EdgeInsets.only(top: 10,left: 10),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 7),
                        child: Text(
                          "Cast",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),
                        ),
                      ),

                       Padding(
                           padding: EdgeInsets.only(left: 2,right: 2),
                         child: Container(
                           width: 500,
                           height: 50,
                           child: Flexible(
                             fit: FlexFit.loose,
                             child: ListView(
                               scrollDirection: Axis.horizontal,
                               shrinkWrap: true,
                               children: [

                                 CircleAvatar(
                                   maxRadius: 50,
                                   backgroundColor: Color(0xFF312F2F),

                                 ),

                                 CircleAvatar(
                                   maxRadius: 50,
                                   backgroundColor: Color(0xFF312F2F),

                                 ),

                                 CircleAvatar(
                                   maxRadius: 50,
                                   backgroundColor: Color(0xFF312F2F),

                                 ),

                                 CircleAvatar(
                                   maxRadius: 50,
                                   backgroundColor: Color(0xFF312F2F),

                                 ),

                               ],

                             ) ,
                           ),
                         ),
                       )


                    ],
                  ),
                ),

              ),

            //   buy ticket
             Padding(
                 padding: EdgeInsets.only(top: 30),
               child:  Align(
                 alignment: Alignment.center,
                 child: TextButton(
                   onPressed: (){

                   },
                   child: Text(
                     "Buy Ticket",
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

                     fixedSize: MaterialStateProperty.all(
                       Size(150, 30)
                     )

                   ),

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