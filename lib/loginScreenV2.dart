import 'package:flutter/material.dart';
import 'package:fork_and_food_app/SignUpScreen.dart';
import 'package:fork_and_food_app/homePage.dart';
import 'package:fork_and_food_app/homeScreenV2.dart';
import 'package:google_fonts/google_fonts.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void _submitForm()
  {
      if(_formkey.currentState!.validate()){
        Navigator.push(context, MaterialPageRoute(builder: (context) => homePageV2()));
      }
  }
  String? _validateEmail (value)
  {
    RegExp emailRegExp  =RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value))
      {
        return("Enter a valid email");
      }
    if(value!.isEmpty)
      {
        return("Enter a email");
      }
    else
    {
      return null;
    }
  }
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in", style: GoogleFonts.aboreto(fontWeight: FontWeight.bold, fontSize: 20),)
        ,centerTitle: true,),
      body:

        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Text("Welcome to Food AND Fork", style: GoogleFonts.aboreto(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            SizedBox(
              height: 16,
            ),
            Container(width: MediaQuery.of(context).size.width*0.6,
                padding:  EdgeInsets.only(left: 10),child: Text("Enter your Email or phone number to sign in",
              style: GoogleFonts.aboreto(fontSize: 16, fontWeight: FontWeight.w300),)),
            SizedBox(
              height:8,
            ),

            Form(key: _formkey ,child: Column(children: [
              Container(alignment: Alignment.centerRight
                ,height: MediaQuery.of(context).size.height*0.07, width: MediaQuery.of(context).size.width*0.5,
                child: TextFormField(

                validator: _validateEmail,

                  decoration: InputDecoration(
                    isDense: true,
                      prefixIcon: Icon(Icons.person_outlined),
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.black45)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.redAccent)
                    ),
                      errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.redAccent)
                ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.redAccent)
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(alignment: Alignment.center
                ,height: MediaQuery.of(context).size.height*0.07, width: MediaQuery.of(context).size.width*0.5,
                child: TextFormField(
                  validator:
                      (value){
                    if(value!.length <= 5)
                    {
                      return("Password must be 6 letter long");
                    }
                    else
                    {
                      return null;
                    }
                  },

                  decoration:

                  InputDecoration(

                      isDense: true,
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: IconButton(onPressed: (){
                        setState((){
                          _isObscure = !_isObscure;
                        });
                      }, icon: Icon(_isObscure? Icons.visibility: Icons.visibility_off),),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.black45)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.redAccent)
                      ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.redAccent)
                    ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.redAccent)
                      )
                  ),
                  obscureText: _isObscure,

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(width: MediaQuery.of(context).size.width*0.5,
                child: ElevatedButton(onPressed: _submitForm, child: Text("Sign in"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(padding: EdgeInsets.only(left: 120), width:  MediaQuery.of(context).size.width*0.1,
                child: Row(
                  spacing: 0.01,

                  children: [
                    Text("Didn't have a account?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                    }, child: Text("Create Account", style: TextStyle(color: Colors.redAccent),))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container( height: 200, width: MediaQuery.of(context).size.width*0.7,
                child: CircleAvatar(backgroundImage: NetworkImage("https://i.ibb.co/v4wnscH6/fork-and-food-high-resolution-logo.png"),radius: 70,),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.blue, height: MediaQuery.of(context).size.height*0.1,width:  MediaQuery.of(context).size.width,child: Column(children: [
                  Text("Contact us : +91938293729", style: GoogleFonts.aboreto(fontWeight: FontWeight.bold, color: Colors.black),


                  ),
                Text("Email : supportFoodAndFork@support.com ", style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,  color: Colors.black),

                ),
                Text("Terms And Conditons ", style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,  color: Colors.black),)
              ],),),

            ],
            ))
          ],
        ),

        


     );
  }
}
