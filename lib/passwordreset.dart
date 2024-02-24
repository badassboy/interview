import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/resetsuccess.dart';

class PasswordReset extends StatefulWidget{
  @override
  State<PasswordReset> createState() {
    return PasswordResetScreen();
  }

}

class PasswordResetScreen extends State<PasswordReset> {

  final _formKey = GlobalKey<FormState>();

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
                    flex: 5,
                    child:
                    Container(
                      color: Color(0xFF1D1D1D),
                    ),


                  ),

                  Flexible(
                      flex: 1,
                      child: Container(
                        color:Color(0XFF900606),
                      )
                  ),

                  Flexible(
                      flex: 1,
                      child: Container(
                        color:Color(0XFF5E0505),
                      )
                  )

                ],

              ),

              //   User forms
              Container(

                padding: EdgeInsets.only(top: 150),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: 60, bottom: 10,left: 20),
                      child: Center(
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            fontSize: 17
                          ),),
                      ),
                    ),
                    //   for the text


                        Form(
                          key: _formKey,
                          child: Column(
                            children: [

                              //   email
                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),

                                  child:TextField(

                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          labelText: "password",
                                          labelStyle: TextStyle(
                                            color: Colors.white
                                          )


                                        ),


                                      ) ,

                        ) ,



                            //   password
                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),

                                child:TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                            labelText: "Confirm password",
                                            labelStyle: TextStyle(
                                                color: Colors.white
                                            )
                                        ),

                                      ) ,

                                  ),


                              Padding(
                                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                  child: SizedBox(
                                    width: 270,
                                    height: 50,
                                    child: ElevatedButton(
                                      child: Text(
                                        "Reset",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => ResetSuccess()));
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





                  ],

                ),

              ),



            ],
          )


      ),

    );

  }
}