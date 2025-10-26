import 'package:flutter/material.dart';
import 'package:fork_and_food_app/SignUpScreen.dart';
import 'package:fork_and_food_app/homePage.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
bool isObscureText = true;
class _LoginScreenState extends State<LoginScreen> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Fork And Food",
        style: GoogleFonts.aDLaMDisplay(
          color: Colors.white, fontWeight: FontWeight.w300,),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,),
      body: Center(

        child: Container(height: 600, width: 450, decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21), color: Color(0xfffafafa),
            boxShadow: [
              BoxShadow(color: Colors.black45,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 4))
            ]
        ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 50),
                height: 200,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(104)
                ),
                child:
                Image.network(
                    "https://i.ibb.co/x8LTtdCV/Screenshot-2025-10-25-204921-removebg-preview.png"),
              ),
              Container(width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      suffixIcon: Icon(Icons.email, color: Colors.black45,),
                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.black45,
                              width: 2
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.redAccent,
                              width: 2
                          )
                      )
                  ),
                ),
              ),

              Container(padding: EdgeInsets.only(top: 20), width: 300,
                  child: TextField(
                      obscureText: isObscureText,
                      decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                              icon: Icon(
                                Icons.remove_red_eye, color: Colors.black45,)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),

                              borderSide: BorderSide(
                                  color: Colors.black45,
                                  width: 2

                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 2,
                              )
                          )
                      )
                  )
              ),
              Container(padding: EdgeInsets.only(top: 20), width: 100,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                    child: Text("Sign-up"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white),)
              ),

              Container(padding: EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen()));
                  },
                  child: Text("Don't have a account? Sign Up",
                      style: GoogleFonts.aDLaMDisplay(
                          decoration: TextDecoration.underline)),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
