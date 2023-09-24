import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> yo = ["Your List", "Item 1", "Item 2", "Item 3"];
  List<String> yo1 = ["Orders", "Order 1", "Order 2", "Order 3"];
  List<String> yo2 = [
    "Favourites",
    "Favourite 1",
    "Favourite 2",
    "Favourite 3"
  ];
  List<String> yo3 = ["Settings", "Setting 1", "Setting 2", "Setting 3"];
  List<String> yo4 = ["History", "History 1", "History  2", "History 3"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF17181D),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
            color: Color(0xFF17181D),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 278,
            width: 395,
            color: Color(0xFF2F2B2B),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Hello Krish,",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Image(image: AssetImage("lib/images/image (39).png")),
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ),
          Container(
            height: 290,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    TileWidget(yooo: yo),
                    TileWidget(yooo: yo1),
                    TileWidget(yooo: yo2),
                    TileWidget(yooo: yo3),
                    TileWidget(yooo: yo4),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

class TileWidget extends StatelessWidget {
  const TileWidget({
    super.key,
    required this.yooo,
  });

  final List<String> yooo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        color: Color(0xFF364345),
        padding: EdgeInsets.all(10),
        child: DropdownButton<String>(
          dropdownColor: Color(0xFF364345),
          isExpanded: true,
          iconSize: 25,
          icon: Icon(Icons.arrow_downward_sharp),
          value:
              yooo[0], // Initial value (you can set this to one of the items)
          underline: Container(),
          onChanged: (String? newValue) {},
          items: yooo.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
