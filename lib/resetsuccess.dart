import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ResetSuccess extends StatefulWidget{
  @override
  State<ResetSuccess> createState() {
   return ResetSuccessPage();
  }

}

class ResetSuccessPage extends State<ResetSuccess>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
            children: [
              // colors
              Row(
                children: [





                  Flexible(
                      flex: 1,
                      child: Container(
                        color:Color(0XFF5E0505),
                      )
                  ),

                  Flexible(
                      flex: 1,
                      child: Container(
                        color:Color(0XFF900606),
                      )
                  ),

                  Flexible(
                    flex: 5,
                    child:
                    Container(
                      color: Color(0xFF1D1D1D),
                    ),


                  ),

                ],

              ),

              //   user form
                 Container(
                  // color: Colors.yellow,
                  // height: 900,
                  padding: EdgeInsets.only(top: 150),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Column(

                  children: [

                  Padding(padding: EdgeInsets.only(top: 70, bottom: 10),
                  child: Center(
                    child: Text(
                      "New Password Reset",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),),
                  ),
                ),
                //   for the text


                Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                    child: SizedBox(
                      width: 270,
                      height: 50,
                      child: ElevatedButton(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFCD0808),



                        ),


                      ) ,
                    )

                ),
                //   end of password







                ],

              ) ,
                  )



                ),


            ],
          )

      ),

    );

  }
}