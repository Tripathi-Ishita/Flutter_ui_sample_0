import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<String> Profile = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
    "assets/8.png",
    "assets/9.png",
    "assets/10.png",
  ];
  final List<String> Names = [
    "Emma",
    "Liam",
    "Olivia",
    "Noah",
    "Ava",
    "Isabella",
    "Sophia",
    "Mia",
    "Charlotte",
    "Amelia"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Discover",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  child: Text("1"),
                ),
                PopupMenuItem(
                  child: Text("2"),
                ),
                PopupMenuItem(
                  child: Text("3"),
                )
              ];
            },
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(10)),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .45,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            top: -30,
                            left: -20,
                            child: Image(
                              image: AssetImage(
                                "assets/image.png",
                              ),
                              width: MediaQuery.of(context).size.width * .57,
                              height: MediaQuery.of(context).size.height * .4,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Text(
                      "Show me your design ••",
                      style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 20,
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Colleagues 🏬",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(

                scrollDirection: Axis.horizontal,
                itemCount: Names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width*0.26,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                    ),
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height*.6,
                    child: Card(
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(Profile[index]),
                            width: MediaQuery.of(context).size.width*.16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Names[index]),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child:Text("Dasboard ✈️",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),),
            ),
          ),

          Expanded( child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Names.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height*.3,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(Profile[index]),
                        width: MediaQuery.of(context).size.width*.16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(Names[index]),
                      )
                    ],
                  ),
                );
              }),)
        ],
      ),
    );
  }
}