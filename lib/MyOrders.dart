import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent, title: Text("Fork And Food", style: GoogleFonts.aDLaMDisplay(fontWeight: FontWeight.w300, color: Colors.white),),centerTitle: true,),
      body: Center(
        child: Container(
          child: Text("This is My orders page", style: GoogleFonts.aDLaMDisplay(
              fontWeight: FontWeight.w300, fontSize: 32),),
        ),
      ),
    );
  }
}