import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:untitled/passwordreset.dart';

class Otp extends StatefulWidget{
  @override
  State<Otp> createState() {
   return OtpScreen();
  }

}

class OtpScreen extends State<Otp>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
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

              //   logo
                  Container(
                    child: Container(

                      padding: EdgeInsets.only(top: 150),
                      width: MediaQuery.of(context).size.width,
                      child: Column(

                        children: [

                          Padding(padding: EdgeInsets.only(top: 60, bottom: 20),
                            child: Center(
                              child: Text(
                                "Enter Code",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),),
                            ),
                          ),
                          //   for the text

                          //   form design Container
                          Container(

                              height: 490,
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
                                    Padding(padding: EdgeInsets.only(top: 50,bottom: 10,left: 40,right: 40),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            Padding(padding: EdgeInsets.only(left: 10, bottom: 10),
                                              child: Text(
                                                "Enter 4 pin code sent to your email",
                                                style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),



                                            OtpTextField(
                                              numberOfFields: 4,
                                              borderColor: Colors.redAccent,
                                              keyboardType: TextInputType.number,
                                              enabledBorderColor: Colors.redAccent,
                                              focusedBorderColor: Colors.black12,

                                              //set to true to show as box or false to show as dash
                                              showFieldAsBox: true,
                                              fieldWidth: 50,
                                              borderRadius: BorderRadius.all(Radius.circular(15)),

                                              //runs when a code is typed in
                                              onCodeChanged: (String code) {
                                                //handle validation or checks here
                                              },
                                              //runs when every textfield is filled
                                              onSubmit: (String verificationCode){
                                                showDialog(
                                                    context: context,
                                                    builder: (context){
                                                      return AlertDialog(
                                                        title: Text("Verification Code"),
                                                        content: Text('Code entered is $verificationCode'),
                                                      );
                                                    }
                                                );
                                              }, // end onSubmit
                                            ) ,







                                          ],
                                        )



                                    ),
                                    //   end of email
                                    Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 100),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Resend code",
                                            style: TextStyle(
                                                color: Colors.black12,
                                                fontWeight: FontWeight.normal
                                            ),
                                          ),
                                          SizedBox(width: 2,),
                                          Text("0:05")
                                        ],
                                      ) ,
                                    ),

                                    SizedBox(height: 20,),








                                    Padding(
                                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                        child: SizedBox(
                                          width: 230,
                                          height: 50,
                                          child: ElevatedButton(
                                            child: Text(
                                              "Send",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            onPressed: (){
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context)=>PasswordReset()));
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
                  ),


    ],
    )


    );
  }

}