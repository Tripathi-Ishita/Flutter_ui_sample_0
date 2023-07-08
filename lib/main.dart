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
  final List<String> Dashboard = [
    "Work",
    "Paint",
    "Meeting",
    "Deadline",
    "Communication",
    "Teamwork",
    "Presentation",
    "Project",
    "Document",
    "Strategy"
  ];
  final List<IconData> DashIcons = [
    Icons.work_outline_outlined,
    Icons.color_lens_outlined,
    Icons.people_alt_outlined,
    Icons.work_history_outlined,
    Icons.speaker_notes_outlined,
    Icons.handshake_outlined,
    Icons.screen_share_outlined,
    Icons.task_outlined,
    Icons.note_outlined,
    Icons.games_outlined
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
          style: TextStyle(color: Colors.black,fontFamily: "Pacifico",fontSize: 30,fontWeight: FontWeight.w400),
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
                  border: Border.all(color: Colors.deepOrange),
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
                    width: MediaQuery.of(context).size.width*0.30,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                    ),
                    padding: EdgeInsets.all(10),

                    child: Card(
                      shadowColor: Colors.pink,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      elevation: 10,
                      surfaceTintColor: Colors.deepOrange,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(Profile[index]),
                            width: MediaQuery.of(context).size.width*.18,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Names[index],style: TextStyle(fontFamily: 'Pacifico',fontSize: 16),),
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
              child:Text("Dashboard ✈️",
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
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.38,

                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.pink,
                    surfaceTintColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(28)
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                            alignment: Alignment.topLeft
                            ,child: Icon(DashIcons[index],size: 40)),

                        Container(
                            padding: EdgeInsets.only(bottom: 20,left: 15,top: 5),
                            alignment: Alignment.topLeft
                            ,child: Text(Dashboard[index],style: TextStyle(fontFamily: 'Pacifico',fontSize: 16),)),
                        Container(
                          height: 5,
                          width: 100,
                          child: LinearProgressIndicator(
                            value: 0.7,
                            valueColor:AlwaysStoppedAnimation(
                              Colors.deepOrangeAccent
                            ),
                            backgroundColor: Colors.grey,

                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),)
        ],
      ),
    );
  }
}