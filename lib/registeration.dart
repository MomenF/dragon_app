import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Models/Component.dart';

class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var emailAddress = TextEditingController();
  var createPassword = TextEditingController();
  var confirmPassword = TextEditingController();
  bool showPassword1 = true;
  bool showPassword2 = true;
  var iconChanged1 = Icon(Icons.visibility);
  var iconChanged2 = Icon(Icons.visibility);
  var FormKey = GlobalKey<FormState>();
  bool done = false ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              colorHeader: Colors.red,
              headerTitle: "Register Now ",
              titleStyle: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,

              ),

            ),
            Container(
              margin: EdgeInsets.only(
                right: 120,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),

              ),
              child: MaterialButton(onPressed: (){
                Navigator.pushNamed(context, "/login");
              },
              child: Row(
                children: [
                  CircleAvatar(
                      child: Icon(Icons.arrow_back,color: Colors.white,),
                      backgroundColor: Colors.red ,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Back to Login Page',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ) ,

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: FormKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Column(
                  children: [
                    /** First Name **/
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        keyboardType:TextInputType.text ,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          prefixIcon: Icon(Icons.text_fields,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),

                        ),
                        controller: firstName,
                        onChanged: (value){print(value);},
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field Must not be Empty";
                          }else{return null ;}
                        },
                      ),
                    ),
                    /** Last Name **/
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        keyboardType:TextInputType.text ,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          prefixIcon: Icon(Icons.text_fields,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),

                        ),
                        controller: lastName,
                        onChanged: (value){print(value);},
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field Must not be Empty";
                          }else{return null ;}
                        },
                      ),
                    ),
                    /** Email Bar **/
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        keyboardType:TextInputType.text ,
                        decoration: InputDecoration(
                          hintText: "Email address",
                          prefixIcon: Icon(Icons.email,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),

                        ),
                        controller: emailAddress,
                        onChanged: (value){print(value);},
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field Must not be Empty";
                          }else{return null ;}
                        },
                      ),
                    ),
                    /** Create Password **/
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        maxLength: 25,
                        obscureText: showPassword1 ,
                        keyboardType:TextInputType.visiblePassword ,
                        decoration: InputDecoration(
                          hintText: "Create Password",
                          prefixIcon: Icon(Icons.lock,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                            icon: iconChanged1 ,
                            onPressed: (){
                              setState(() {
                                showPassword1 = !showPassword1;
                                showPassword1?iconChanged1=Icon(Icons.visibility):
                                iconChanged1=Icon(Icons.visibility_off);
                              });
                            },
                          )

                        ),
                        controller: createPassword,
                        onChanged: (value){print(value);},
                        validator: (value){
                          if(value.isEmpty){
                            return "This Field Must not be Empty";
                          }else{return null ;}
                        },
                      ),
                    ),
                    /** Confirm Password **/
                    Container(
                      child: TextFormField(
                        maxLength: 25,
                        obscureText: showPassword2 ,
                        keyboardType:TextInputType.visiblePassword ,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixIcon: IconButton(
                              icon: iconChanged2 ,
                              onPressed: (){
                                setState(() {
                                  showPassword2 = !showPassword2;
                                  showPassword2?iconChanged2=Icon(Icons.visibility):
                                  iconChanged2=Icon(Icons.visibility_off);
                                });
                              },
                            )

                        ),
                        controller: confirmPassword,
                        onChanged: (value){print(value);},
                        validator: (value){

                            if(value.isEmpty){
                            return "This Field Must not be Empty";
                          }else if (createPassword.text != confirmPassword.text){
                            return "The Password does not Match";
                          }else{return null;}

                          },

                    ),
                    ),
                    /** Sign Up **/
                    Builder(
                      builder: (context){
                        return MaterialButton(
                          onPressed: (){
                            if(FormKey.currentState.validate()){
                              setState(() {
                                done = true;
                                print('done');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.red,
                                      content: MaterialButton(
                                    onPressed: (){
                                      Navigator.pushNamedAndRemoveUntil(context,  "/Home", (route) => false);
                                    },
                                    child: Text("Go to Home Page",style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ))
                                );
                              });
                            }
                          },
                          color: Colors.red,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                        );

                      },
                    ),
                    Text( done?'Registration Complete': " " ,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,


                      ),),
                    SizedBox(
                      height: 50,
                    )









                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


