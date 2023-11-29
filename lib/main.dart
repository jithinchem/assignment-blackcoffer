import 'package:assignment_blackcoffer/refinePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: ExplorePage());
  }
}

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int indexNum = 0;
  List tabWidgets = [
    Explore(),
    Text("Network"),
    Text("Chat"),
    Text("Contact"),
    Text("Group"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Howdy JITHIN TV!!!\n♀️  unknown ",
          style: TextStyle(fontSize: 15),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Container(
              height: 50,
              width: 50,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RefinePage()));
                    },
                    icon: Icon(
                      Icons.checklist,
                      size: 35,
                    ),
                  ),
                  Text("   Refine", style: TextStyle(fontSize: 7))
                ],
              ),
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 15, 64, 104),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notes,
              size: 35,
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recycling),
            label: "Network",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tag),
            label: "Groups",
          )
        ],
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 15, 64, 104),
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
      body: tabWidgets.elementAt(indexNum),
    );
  }
}

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'msc',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(18),
            child: Container(
              color: Color.fromARGB(255, 15, 64, 104),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(child: Container()),
                    TabBar(
                      indicatorColor: Colors.grey,
                      tabs: [
                        Text("Personal"),
                        Text("Business"),
                        Text("Merchant")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 50),
                    child: Container(
                      width: 300,
                      color: Color.fromARGB(255, 253, 250, 250),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  hintText: "Search",
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide())),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 170, left: 30),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Icon(
                                Icons.map,
                                color: Color.fromARGB(255, 15, 64, 104),
                                size: 60,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              "Need your location",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40, top: 10),
                            child: Text(
                              "Your GPS seems to be disabled,",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40, top: 5),
                            child: Text(
                              "do you want to enable it?",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40, top: 20),
                            child: Container(
                              width: 180,
                              height: 35,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      backgroundColor:
                                          Color.fromARGB(255, 15, 64, 104)),
                                  onPressed: () {},
                                  child: Text(
                                    "Allow",
                                    style: TextStyle(),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[Text("Business Page")],
              ),
              Column(
                children: <Widget>[Text("Merchant Page")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
