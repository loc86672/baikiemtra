import 'package:flutter/material.dart';
import 'package:kt3/HumBer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List image = ["hum", "pizza", "cakes"];
  List name = ["Humbergers", "Pizza", "Cakes"];
  List<Color> bgcolor = [Colors.red, Colors.white, Colors.white];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.filter_list_sharp,
            color: Colors.black,
          ),
          title: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.red,
              ),
              Text(
                "Chicago, II.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            Image.asset(
              "images/people.jpg",
              width: 30,
              height: 50,
            ),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "HEY!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "let's get your order!",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                    ]),
                child: Center(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search your food here...",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color: bgcolor[index],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "images/${image[index]}.jpg",
                          height: 80,
                          width: 80,
                        ),
                        Text(
                          name[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View all",
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 2,
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage("images/hum.jpg"))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Chipotle Cheesy Chicken"),
                        Text(
                          "\$20.95",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Chicken burger",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.house_rounded), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_sharp), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Account"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz_sharp), label: "More"),
            ]),
      ),
    );
  }
}
