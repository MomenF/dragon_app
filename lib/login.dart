import 'package:dragon_app/service/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Models/Component.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO Variables

  var emailController = TextEditingController();
  var PasswordController = TextEditingController();
  bool dontShowPassword = true;
  var FormKey = GlobalKey<FormState>();
  var iconChanged = Icon(Icons.visibility);
  final _auth = FirebaseAuth.instance;

  Future<dynamic> SignIn(String email , String password) async {
    try {
      final authResult = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
      );
      print("Sucees");
      print("$email");
      print("$password");
      return authResult;
    }on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(


        child: Form(
          key:FormKey ,
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: 15,
              ),
              /** email bar**/
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,),
                child: TextFormField(
                         onChanged:(value){print(value);} ,
                         keyboardType: TextInputType.emailAddress,
                         decoration: InputDecoration(
                          labelText: "Email Account",
                          prefixIcon: Icon(Icons.email_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                         controller:emailController ,

                ),
              ),
              SizedBox(
                height: 5,
              ),
              /** Password Bar**/
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,),
                child: TextFormField(
                        onFieldSubmitted: (value){print(value);},
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                            dontShowPassword = !dontShowPassword;
                            dontShowPassword?iconChanged=Icon(Icons.visibility):
                            iconChanged=Icon(Icons.visibility_off);
                            });
                          },
                            icon: iconChanged,
                        ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )
                        ),
                  controller:PasswordController ,
                  obscureText: dontShowPassword,

                ),
              ),
              /** login Bar**/
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: MaterialButton(
                  child: Text("Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),),
                  onPressed: () {

                    SignIn(emailController.text,PasswordController.text);
                    Navigator.pushNamedAndRemoveUntil(context, "/Home", (route) => false);
                    },
                  ) ,
                ),

              /** login with Facebook **/
              SizedBox(height: 15,),
              SignInButton(
                Buttons.Facebook,
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, "/Home", (route) => false);
                },
              ),
              /** Register **/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Dont Have Account? please "),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, "/reg");
                }, child: Text("Register",),),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
