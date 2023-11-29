/*TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.grey)),
                  hintText: "Hi Community! I am open to new Connections ''😊''",
                  hintStyle: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 15, 64, 104)),
                ),
              ),*/

             /*DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBar(
          tabs: [
            Tab(text: "Personal"),
            Tab(text: "Business"),
            Tab(text: "Merchant"),
          ],
          indicatorColor: Colors.black,
        ),
      ),
    );*/
    /*Expanded(
            child: TabBarView(controller: tabController,
             children: [
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context,index){return Card( )})
            ]),
          )*/
          /*Column(
            children: [
              Row(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide())),
                  )
                ],
              )
            ],
          )*/
          /*class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 15, 64, 104),
            child: TabBar(
                controller: tabController,
                labelColor: Colors.white,
                indicatorColor: Color.fromARGB(255, 2, 24, 41),
                tabs: [
                  Tab(child: Text("Personal")),
                  Tab(child: Text("Business")),
                  Tab(child: Text("Merchant")),
                ]),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  hintText: "Search",
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide())),
                            )
                          ],
                        )
                      ],
                    );
                  })
            ]),
          ),
        ],
      ),
    );
  }
}*/
