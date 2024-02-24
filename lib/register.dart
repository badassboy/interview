import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget{
  @override
  State<RegisterScreen> createState() {

    return RegisterScreenState();
  }

}

class RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();
  bool _obscured = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

            child:  Stack(
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

                //   registration form
                Container(
                  padding: EdgeInsets.only(top: 145),
                  width: MediaQuery.of(context).size.width,
                  child: Column(

                    children: [

                      Padding(padding: EdgeInsets.only(top: 60, bottom: 10),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ),
                      //   for the text

                      //   form design Container
                      Container(

                        height: 510,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              // email
                              Padding(padding: EdgeInsets.only(top: 25,bottom: 10,left: 40,right: 40),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)
                                    ),
                                    labelText: "username",
                                    hintText: "Enter username",
                                    labelStyle: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),




                                ) ,

                              ),
                            //   email

                            //   email
                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),
                                child: TextField(

                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      labelText: "email",
                                      hintText: "Enter email",
                                    labelStyle: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),


                                ) ,

                              ),
                            //   end of email

                            //   password
                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),
                                child: TextField(

                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),

                                      labelText: "password",
                                      hintText: "Enter password",
                                      labelStyle: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.normal
                                      ),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                      child: Icon(
                                        _obscured
                                            ? Icons.visibility_rounded
                                            : Icons.visibility_off_rounded,
                                        size: 20,
                                      ),
                                    )
                                  ),

                                ) ,

                              ),
                            //   end of password

                            //   confirm password
                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),
                                child: TextField(

                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),

                                      labelText: "Confirm password",
                                      hintText: "Enter password",
                                      labelStyle: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.normal
                                      ),
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                        child: Icon(
                                          _obscured
                                              ? Icons.visibility_rounded
                                              : Icons.visibility_off_rounded,
                                          size: 20,
                                        ),
                                      )
                                  ),

                                ) ,

                              ),

                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 60,right: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.redAccent,
                                    ),
                                    Text(
                                      "I am a show  Creator",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            //   end of checkbox

                              Padding(
                                padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                child: SizedBox(
                                  width: 270,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text(
                                        "Sign Up",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFFCD0808),



                                    ),


                                  ) ,
                                )





                              )










                            ],
                          ) ,
                        )

                      )



                    ],

                  ),

                ),



              ],
            ),

          )





    );
  }

}