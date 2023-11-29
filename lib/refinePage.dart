import 'package:assignment_blackcoffer/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RefinePage extends StatefulWidget {
  const RefinePage({super.key});

  @override
  State<RefinePage> createState() => _RefinePageState();
}

class _RefinePageState extends State<RefinePage> {
  bool _isSelected = true;
  double _currentSliderValue = 0;
  List<String> items = [
    "Available | Hey Let Us Contact",
    "Away | Stay Discrete And Watch",
    "Busy | Do Not Disturb | We Will Catch Up Later",
    "SOS | Emergency! Need Assistance! HELP"
  ];
  String? selectedItem = "Available | Hey Let Us Contact";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 64, 104),
        title: Text("Refine"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => ExplorePage()));
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, left: 25),
              child: Text(
                "Select Your Availability",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 64, 104)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: SizedBox(
                width: 360,
                height: 60,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 1, color: Colors.grey))),
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 15, 64, 104)),
                            ),
                          ))
                      .toList(),
                  onChanged: (item) => setState(() => selectedItem = item),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Text(
                "Add Your Status",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 64, 104)),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15, left: 25, right: 25),
                child: MyCustomForm()),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Text(
                "Select Hyper Local Disatance",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 64, 104)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Slider(
                thumbColor: Color.fromARGB(255, 15, 64, 104),
                activeColor: Color.fromARGB(255, 15, 64, 104),
                inactiveColor: Colors.grey,
                value: _currentSliderValue,
                max: 100,
                divisions: 100,
                label: _currentSliderValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 294),
                    child: Text(
                      "1 Km",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 15, 64, 104),
                      ),
                    ),
                  ),
                  Text(
                    "100 Km",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 15, 64, 104),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Text(
                "Select Purpose",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 64, 104)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      ChoiceChip(
                        label: Text(
                          "Coffee",
                          selectionColor: Color.fromARGB(255, 247, 243, 243),
                          style: TextStyle(
                              color: Color.fromARGB(255, 251, 252, 252)),
                        ),
                        selected: _isSelected,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected = newBoolValue;
                          });
                        },
                        selectedColor: Color.fromARGB(255, 15, 64, 104),
                      ),
                      SizedBox(width: 5),
                      ChoiceChip(
                        label: Text(
                          "Bussiness",
                          selectionColor: Color.fromARGB(255, 247, 243, 243),
                          style: TextStyle(
                              color: Color.fromARGB(255, 251, 252, 252)),
                        ),
                        selected: _isSelected,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected = newBoolValue;
                          });
                        },
                        selectedColor: Color.fromARGB(255, 15, 64, 104),
                      ),
                      SizedBox(width: 5),
                      ChoiceChip(
                          label: Text("Hobbies"),
                          selected: _isSelected,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected = newBoolValue;
                            });
                          },
                          selectedColor: Color.fromARGB(255, 225, 223, 223)),
                      SizedBox(width: 5),
                      ChoiceChip(
                        label: Text(
                          "Friendship",
                          selectionColor: Color.fromARGB(255, 247, 243, 243),
                          style: TextStyle(
                              color: Color.fromARGB(255, 251, 252, 252)),
                        ),
                        selected: _isSelected,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected = newBoolValue;
                          });
                        },
                        selectedColor: Color.fromARGB(255, 15, 64, 104),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ChoiceChip(
                          label: Text("Movies"),
                          selected: _isSelected,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected = newBoolValue;
                            });
                          },
                          selectedColor: Color.fromARGB(255, 225, 223, 223)),
                      SizedBox(width: 15),
                      ChoiceChip(
                          label: Text("Dining"),
                          selected: _isSelected,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected = newBoolValue;
                            });
                          },
                          selectedColor: Color.fromARGB(255, 225, 223, 223)),
                      SizedBox(width: 15),
                      ChoiceChip(
                          label: Text("Dating"),
                          selected: _isSelected,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected = newBoolValue;
                            });
                          },
                          selectedColor: Color.fromARGB(255, 225, 223, 223)),
                      SizedBox(width: 15),
                      ChoiceChip(
                        label: Text(
                          "Matrimony",
                        ),
                        selected: _isSelected,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected = newBoolValue;
                          });
                        },
                        selectedColor: Color.fromARGB(255, 225, 223, 223),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 105, top: 20),
              child: Container(
                width: 200,
                height: 35,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        backgroundColor: Color.fromARGB(255, 15, 64, 104)),
                    onPressed: () {},
                    child: Text(
                      "Save & Explore",
                      style: TextStyle(),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Hi Community! I am open to new Connections ''😊''",
              hintStyle: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 15, 64, 104),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
