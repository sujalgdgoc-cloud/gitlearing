import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent, title: Text("Fork And Food", style: GoogleFonts.aDLaMDisplay(fontWeight: FontWeight.w300, color: Colors.white),),centerTitle: true,),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [Container(
            child: Card(
              elevation: 4,
              child: Center(child: Text("My Orders", style: GoogleFonts.aDLaMDisplay(fontSize: 32, fontWeight: FontWeight.w300),)),

            ),

        ),
        Card(
          elevation: 4,
          child: Container(height: 300, width: MediaQuery.of(context).size.width*0.8, decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 2,), bottom: BorderSide(color: Colors.black, width: 2)),
            borderRadius: BorderRadius.circular(11),

          ),child: Column(children: [
    Center(child: Text("Previously Ordered", style: GoogleFonts.aDLaMDisplay(fontSize: 16, fontWeight: FontWeight.w300),)),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://media.istockphoto.com/id/187248625/photo/pepperoni-pizza.jpg?s=2048x2048&w=is&k=20&c=KWdxgdyv_fRDh8i8D5LToxbKpcRrNJ0iVCmQZ8LFoAY="),

                    ),
                    title: Text("Pizza"),
                    subtitle: Text("Date - 12/08/2024"),
                  )
                ],
              ),
            )
          ],),),
        )],
      ),
    );
  }
}