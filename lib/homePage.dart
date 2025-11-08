import 'package:flutter/material.dart';

import 'package:fork_and_food_app/MyOrders.dart';
import 'package:fork_and_food_app/MyProfile.dart';
import 'package:fork_and_food_app/SignUpScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fork And Food", style:GoogleFonts.aDLaMDisplay(color: Colors.white, fontWeight: FontWeight.w300, ),), centerTitle: true, backgroundColor: Colors.redAccent),
      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(child: Image.network("https://i.ibb.co/x8LTtdCV/Screenshot-2025-10-25-204921-removebg-preview.png",height: 140,)),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: Text("My Orders"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders()));},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));},
            ),

          ],
        ),

      ),
      body: Column(
    children: [Text("Food Categories", style: GoogleFonts.aDLaMDisplay(fontWeight: FontWeight.bold, fontSize: 24),),
    Expanded(
    child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    children: [

      Container(height: 50, width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21)
        ),
        child: GridTile(child: Container(padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/998309062/photo/burger-with-beef-and-cheese.jpg?s=2048x2048&w=is&k=20&c=WiewZ2pC0tP1-NfjpxTkWYXVCBotqrIzWXc2HkAewkk="))
            ),
        ),
          footer: Text("Burger ₹450", style: GoogleFonts.aboreto(fontSize: 15,fontWeight: FontWeight.bold),),
        ),
      ),
      Container(height: 50, width: 50,
        child: GridTile(child: Container( padding: EdgeInsets.all(2), child: Image.network("https://media.istockphoto.com/id/187248625/photo/pepperoni-pizza.jpg?s=2048x2048&w=is&k=20&c=KWdxgdyv_fRDh8i8D5LToxbKpcRrNJ0iVCmQZ8LFoAY="),),
          footer: Text("Pizza ₹330", style: GoogleFonts.aboreto(fontSize: 15,fontWeight: FontWeight.bold),),),
      ),
      Container(height: 50, width: 50,
        child: GridTile(child: Container(padding: EdgeInsets.all(2), child: Image.network("https://media.istockphoto.com/id/1166678093/photo/spaghetti-with-tomato-sauce-shot-on-rustic-wooden-table.jpg?s=2048x2048&w=is&k=20&c=6N8WtPXSqRt4_vx9EfpzrfjsDxHhwdfHyTzchmMUj_w="),),
            footer: Text("Pasta ₹500", style: GoogleFonts.aboreto(fontSize: 15,fontWeight: FontWeight.bold),)),
      ),
      Container(height: 50, width: 50,
        child: GridTile(child: Container(padding: EdgeInsets.all(2), child: Image.network("https://media.istockphoto.com/id/966934632/photo/appetizing-french-fries-in-a-bowl.jpg?s=2048x2048&w=is&k=20&c=dMUdvvI2aE0F5nkG12yb6jMTryWFaE7sWkS04JkXlAo="),),
          footer: Text(" French Fries ₹110", style: GoogleFonts.aboreto(fontSize: 15,fontWeight: FontWeight.bold),),),
      ),
      GridTile(child: Container( padding: EdgeInsets.all(2), child: Image.network("https://media.istockphoto.com/id/185266029/photo/waffles-with-fruit-and-maple-syrup-on-a-marble-counter.jpg?s=2048x2048&w=is&k=20&c=aZPRY4yvvN0bKIXH-24KIZa9YVXP7cQBgrYmBMmeabA="),),footer: Text("Waffles - ₹300", style: GoogleFonts.aboreto(fontWeight: FontWeight.bold, fontSize: 15),),)
      ,GridTile(child: Container( padding: EdgeInsets.all(2), child: Image.network("https://media.istockphoto.com/id/458531057/photo/bucket-of-kentucky-fried-chicken.jpg?s=2048x2048&w=is&k=20&c=YSSitbrcuIQnsBm4HDYrnw7rog_v-tvusMdpsTLNDSc="),),
          footer: Text("Kfc-Chicken ₹450", style: GoogleFonts.aboreto(fontSize: 15,fontWeight: FontWeight.bold),)),
    ],),
    ),
      Divider(thickness: 2,),
      Padding(padding: EdgeInsets.all(8.0), child: Text("Popular restaurants", style: GoogleFonts.aDLaMDisplay(fontWeight: FontWeight.w300, fontSize: 24),),),
      Expanded(
        flex: 1,
        child: ListView(
          children: [
            ListTile(title: Text("Hello"),),
            Container(padding: EdgeInsets.only(top: 10), height: 100, decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: Border.all(color: Colors.black45, width: 1)
            ),
                child: ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/83/d9/d0/front-of-and-entrance.jpg?w=500&h=-1&s=1"),radius:50),title: Text("The Cravings", style: GoogleFonts.aboreto(fontSize: 32, fontWeight: FontWeight.w300),),)),
            Container(padding: EdgeInsets.only(top: 10),height: 100, decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.black45, width: 1)

            ),
                child: ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd11O7XXo0Au5ZZZwRB8KZTOulxRGKZvpGOw&s"),radius: 50,),title: Text("Hungry Monkey", style: GoogleFonts.aboreto(fontSize: 32, fontWeight: FontWeight.w300),),)),
            Container(padding: EdgeInsets.only(top: 15), height: 100, decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.black45, width: 1)

            ),
                child: ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1371448871/photo/mcdonalds-restaurant-building-exterior.jpg?s=612x612&w=0&k=20&c=REYr4ptOpeHrAWBSKySLsMiVrb7twZ5uwn2RfaIYmBo="),radius: 50),title: Text("McDonalds", style: GoogleFonts.aboreto(fontSize: 32, fontWeight: FontWeight.w300),),)),
            Container(padding: EdgeInsets.only(top: 10), height: 100, decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.black45, width: 1)

            ),
                child: ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmIQCN8MFCN5hmj_sEC9L3ta6AeChEBX3zXw&s"),radius: 50),title: Text("FoMOChi", style: GoogleFonts.aboreto(fontSize: 32, fontWeight: FontWeight.w300),),))
          ],
        ),
      )
    ]
    )
    );
  }
}
