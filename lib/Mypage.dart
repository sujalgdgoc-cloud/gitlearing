import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fork_and_food_app/Settings.dart';
import 'package:fork_and_food_app/homeScreenV2.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  void snackBar(BuildContext context) {
    final _snackBar = SnackBar(content: Text("Order added to cart"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  hint: Text("Search"),
                  fillColor: Colors.grey,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),

                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                items: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              offset: Offset(0, 4),
                              blurRadius: 11,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image(
                            image: NetworkImage(
                              "https://iili.io/KDOnmBV.md.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 105,
                        child: SizedBox(
                          width: 120,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Order Now"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.yellowAccent,
                              backgroundColor: Colors.blue,
                              minimumSize: Size(200, 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              offset: Offset(0, 4),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image(
                            image: NetworkImage(
                              "https://iili.io/KDOoKhv.md.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 95,
                        child: SizedBox(
                          width: 120,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Order Now"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.yellowAccent,
                              backgroundColor: Colors.blue,
                              minimumSize: Size(200, 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              offset: Offset(0, 4),
                              blurRadius: 11,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image(
                            image: NetworkImage(
                              "https://iili.io/KDOnr1S.md.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 100,
                        child: SizedBox(
                          width: 120,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Order Now"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.yellowAccent,
                              backgroundColor: Colors.blue,
                              minimumSize: Size(200, 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,

                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: Duration(seconds: 3),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,

              child: ListTile(
                leading: Text(
                  "Trusted Picks",
                  style: GoogleFonts.aboreto(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  },
                  child: Text(
                    "view all",
                    style: GoogleFonts.aboreto(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 157 / 192,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),

              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 3,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/11/19/05/07/oyster-4636457_1280.jpg",
                          fit: BoxFit.fitWidth,
                          scale: 6,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Container(
                        child: Text(
                          "Pasta",
                          style: GoogleFonts.aboreto(fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Cookie Heaven, FlutterTop",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 25),
                                Icon(
                                  Icons.alarm_outlined,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                                Text(
                                  "10min | 200kal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 30, right: 30),
                        title: Text(
                          "₹150",
                          style: GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 3,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/01/21/12/47/burger-3946012_1280.jpg",
                          fit: BoxFit.fitWidth,
                          scale: 6,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Container(
                        child: Text(
                          "Burger",
                          style: GoogleFonts.aboreto(fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Burger House, 5th Avenue",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 25),
                                Icon(
                                  Icons.alarm_outlined,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                                Text(
                                  "30min | 500kal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 30, right: 30),
                        title: Text(
                          "₹100",
                          style: GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 3,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/06/18/18/54/bbq-2416779_1280.jpg",
                          fit: BoxFit.fitWidth,
                          scale: 6,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Container(
                        child: Text(
                          "Panner Tikka Masla",
                          style: GoogleFonts.aboreto(fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Arbys, 2nd wallie Street",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 25),
                                Icon(
                                  Icons.alarm_outlined,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                                Text(
                                  "30min | 500kal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 30, right: 30),
                        title: Text(
                          "₹500",
                          style: GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 3,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294_1280.jpg",
                          fit: BoxFit.fitWidth,
                          scale: 6,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Container(
                        child: Text(
                          "French Fries",
                          style: GoogleFonts.aboreto(fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Burger House, 5th Avenue",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 25),
                                Icon(
                                  Icons.alarm_outlined,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                                Text(
                                  "29min | 500kal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 30, right: 30),
                        title: Text(
                          "₹50",
                          style: GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 3,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_1280.jpg",
                          fit: BoxFit.fitWidth,
                          scale: 6,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Container(
                        child: Text(
                          "Cheese Burst Pizza",
                          style: GoogleFonts.aboreto(fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Pizza KingDom, 2nd Avenue",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 25),
                                Icon(
                                  Icons.alarm_outlined,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                                Text(
                                  "15min | 500kal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 30, right: 30),
                        title: Text(
                          "₹150",
                          style: GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    spacing: 3,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2021/07/31/17/14/sushi-6512533_1280.jpg",
                          fit: BoxFit.fitWidth,
                          scale: 6,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      Container(
                        child: Text(
                          "Shusi",
                          style: GoogleFonts.aboreto(fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Japanese Taste, DownTown",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 25),
                                Icon(
                                  Icons.alarm_outlined,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                                Text(
                                  "45min | 1000kal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 30, right: 30),
                        title: Text(
                          "₹1,500",
                          style: GoogleFonts.aboreto(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
