import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _selectedMenu = '';
enum Menu { itemOne, itemTwo, itemThree}

class AskQuestion extends StatefulWidget{
  @override
  State<AskQuestion> createState() {
    return AskQuestionPage();
  }

}

class AskQuestionPage extends State<AskQuestion> {
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

      body: Container(
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
                      "Ask a question",
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
                 padding: EdgeInsets.only(top: 20,left: 40,right: 40),
               child: Column(
                 children: [

                   // textfield input
                   TextField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xFF312F2F),
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10)
                       ),
                       label: Text("Ask your question"),
                       labelStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 12,
                         fontWeight: FontWeight.normal
                       ),


                     ),


                   ) ,

                   SizedBox(height: 10,),

                   // text button to add questions
                   TextButton(
                     onPressed: (){

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
             )












            ],
          ),

      ),

    );
  }

}