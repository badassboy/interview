import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/forgetpassword.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen> {
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

              //   login form
              Container(
                // color: Colors.yellow,
                // height: 900,
                padding: EdgeInsets.only(top: 150),
                width: MediaQuery.of(context).size.width,
                child: Column(

                  children: [

                    Padding(padding: EdgeInsets.only(top: 60, bottom: 10),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),),
                      ),
                    ),
                    //   for the text

                    //   form design Container
                    Container(

                        height: 505,
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
                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Padding(padding: EdgeInsets.only(left: 10, bottom: 5),
                                      child: Text(
                                          "email",
                                        style: TextStyle(
                                          color: Colors.redAccent,
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

                              //   password
                              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 10,bottom: 5),
                                    child: Text(
                                      "Password",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),),

                                    TextField(

                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30)
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
                                  ],
                                )



                              ),
                              //   end of email

                              //   forget password

                              Padding(
                                padding: EdgeInsets.only(top: 10,bottom: 10,left: 40,right: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.red,

                                    ),
                                    Text(
                                      "Remember me",
                                      style: TextStyle(
                                          fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(width: 25,),

                                    TextButton(
                                      child: Text(
                                        "Forget Password?",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => ForgetPassword()));
                                      },
                                    )
                                  ],
                                ),

                              ),

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
                                      onPressed: (){},
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