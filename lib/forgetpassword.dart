import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/otp.dart';

class ForgetPassword extends StatefulWidget{
  @override
  State<ForgetPassword> createState() {
   return ForgetPasswordScreen();
  }

}

class ForgetPasswordScreen extends State<ForgetPassword>  {

  final _formKey = GlobalKey<FormState>();
  bool _obscured = false;


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

              //   user forget password form
              Container(
                // color: Colors.yellow,
                // height: 900,
                padding: EdgeInsets.only(top: 150),
                width: MediaQuery.of(context).size.width,
                child: Column(

                  children: [

                    Padding(padding: EdgeInsets.only(top: 80, bottom: 10),
                      child: Center(
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            fontSize: 17
                          ),),
                      ),
                    ),
                    //   for the text

                    //   form design Container
                    Container(

                        height: 480,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [

                              //   email
                              Padding(padding: EdgeInsets.only(top: 70,bottom: 10,left: 40,right: 40),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      Padding(padding: EdgeInsets.only(left: 10, bottom: 5),
                                        child: Text(
                                          "email",
                                          style: TextStyle(
                                              color: Color(0xFFCD0808),
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),


                                      TextField(

                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30)
                                          ),


                                        ),


                                      ) ,

                                    ],
                                  )



                              ),
                              //   end of email



                              //   forget password



                              Padding(
                                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                  child: SizedBox(
                                    width: 270,
                                    height: 50,
                                    child: ElevatedButton(
                                      child: Text(
                                        "Reset Password",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>Otp()));
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