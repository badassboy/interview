import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/buyticket.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

String _selectedMenu = '';

enum Menu { itemOne, itemTwo, itemThree}

class Vote extends StatefulWidget{
  @override
  State<Vote> createState() {
    return VotePage();
  }

}

class VotePage extends State<Vote>{
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
                          "Vote",
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

                Padding(
                    padding: EdgeInsets.all(15),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                        "when an unknown printer took a galley",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11
                    ),
                  ),
                ),


                // display tickets
                Flexible(
                    child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) => Divider(
                        height: 2,
                        thickness: 2,
                        indent: 0,
                        endIndent: 70,
                        color: Color(0xFFCD0808),
                      ),
                      itemBuilder: (BuildContext context, int index){
                        return  Container(
                          padding: EdgeInsets.only(left: 10, bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("lib/assets/images/owner.png"),
                                    fit: BoxFit.cover
                                  )

                                ),
                              ),
                              SizedBox(width: 12,),

                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "american fiction",
                                      style: TextStyle(
                                          color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15

                                      ),
                                    ),


                                    RatingBar(
                                      initialRating: 0,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemSize: 22,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      ratingWidget: RatingWidget(
                                          full: const Icon(
                                              Icons.star,

                                              size: 5.0,
                                              weight: 3.0,
                                              color: Color(0xFFCD0808)
                                          ),
                                          half: const Icon(
                                            Icons.star_half,
                                            color: Colors.orange,
                                            size: 10,
                                          ),
                                          empty: const Icon(
                                            Icons.star_outline,
                                            color: Colors.white,
                                            size: 5,
                                          )),

                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),







                                    // percentage indicator
                                    Padding(
                                        padding: EdgeInsets.all(5),
                                      child: new  LinearPercentIndicator(
                                        width: 140.0,
                                        lineHeight: 14.0,
                                        percent: 0.5,
                                        backgroundColor: Colors.grey,
                                        progressColor: Color(0xFFCD0808),
                                        leading: Icon(
                                          Icons.thumb_up_alt_outlined,
                                          size: 15,
                                          color: Colors.white54,

                                        ),
                                        trailing: Icon(
                                          Icons.thumb_down_alt_outlined,
                                          size: 15,
                                          color: Colors.white54,
                                        ),
                                          barRadius: Radius.circular(16),
                                      ),
                                    ),


                                    SizedBox(height: 3,),

                                    Text(
                                      "95% like this",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    )


                                  ],
                                ),
                              )
                            ],
                          ),

                        );
                      },


                    )
                )
                ,

              ],
            )


        )

    );
  }
}