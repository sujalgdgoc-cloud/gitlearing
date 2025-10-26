import 'package:flutter/material.dart';
import 'package:fork_and_food_app/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fork And Food", style:GoogleFonts.aDLaMDisplay(color: Colors.white, fontWeight: FontWeight.w300, ),), centerTitle: true, backgroundColor: Colors.redAccent,),
      body: Center(
        child: Container(
          height: 600, width: 450, decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Color(0xfffafafa),
          boxShadow:[ BoxShadow(
              color: Colors.black45, blurRadius: 10, spreadRadius: 2, offset: Offset(0, 4)

          )]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              height: 200, width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(104)
              ),
              child:
              Image.network("https://i.ibb.co/x8LTtdCV/Screenshot-2025-10-25-204921-removebg-preview.png"),
            ),
            Container( width: 300, padding: EdgeInsets.only(top: 20),
              child: TextField(

                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.red
                    )
                  ),
                  hint: Text("First name"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black45
                    )

                  )

                ),
              ),
            ),

            Container(width: 300, padding: EdgeInsets.only(top: 5),
              child: TextField(

                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.red
                        )
                    ),
                    hint: Text("Last name"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black45
                        )

                    )

                ),
              ),
            ),
            Container(width: 300, padding: EdgeInsets.only(top: 5),
              child: TextField(

                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.red
                        )
                    ),
                    hint: Text("Email"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black45
                        )

                    )

                ),
              ),
            ),
            Container(width: 300, padding: EdgeInsets.only(top: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.red
                        )
                    ),
                    hint: Text("Password"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black45
                        )

                    )

                ),
              ),
            ),
            Container(width: 300, padding: EdgeInsets.only(top: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.red
                        )
                    ),
                    hint: Text("Confirm Password"),
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.black45
                        )

                    )

                ),
              ),
            ),
            Container( width: 150, padding: EdgeInsets.only(top:20),
              child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));}, child: Text("Create Account"), style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, foregroundColor: Colors.white),),
            )
          ],
        ),),
      ),
    );
  }
}
