import 'package:flutter/material.dart';

class BanaresPage extends StatelessWidget {
  const BanaresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF17181D),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF1A9EB0),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            height: 15,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '  Search ...',
                  ),
                ))
              ],
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 420,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/saree1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.topRight,
                child: Text(
                  "Sponsored",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 10),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 25,
                  width: 110,
                  alignment: Alignment.center,
                  color: Color(0xFF1A9EB0),
                  child: Text(
                    "Deal of the day",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ]),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "See top deals",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 400,
            padding: EdgeInsets.only(left: 17),
            child: ListView(
              children: [
                Row(
                  children: [
                    sareeTile(
                      img: '2',
                      off: '-76%',
                      price: '1,164',
                      type: 'Ethniq',
                    ),
                    sareeTile(
                      img: '3',
                      off: '-56%',
                      price: '1,204',
                      type: 'Designe',
                    ),
                  ],
                ),
                Row(
                  children: [
                    sareeTile(
                      img: '4',
                      off: '-76%',
                      price: '1,164',
                      type: 'Ethniq',
                    ),
                    sareeTile(
                      img: '5',
                      off: '-76%',
                      price: '1,164',
                      type: 'Ethniq',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class sareeTile extends StatelessWidget {
  sareeTile({
    super.key,
    required this.img,
    required this.type,
    required this.price,
    required this.off,
  });
  final String img;
  final String type;
  final String price;
  final String off;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(children: [
        Image(
          image: AssetImage("lib/images/saree$img.png"),
          height: 182,
          width: 165,
        ),
        Container(
          height: 182,
          width: 165,
          color: Color(0xFFE0D7D7),
          child: Column(
            children: [
              Text(
                type,
                style: TextStyle(fontSize: 10),
              ),
              Text(
                "Banarasi Weaving Silk",
                style: TextStyle(fontSize: 13),
              ),
              Text(
                "Saree",
                style: TextStyle(fontSize: 13),
              ),
              Image(image: AssetImage("lib/images/stars4.png")),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "₹$price",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Text(
                off,
                style: TextStyle(fontSize: 20, color: Color(0xFFD72626)),
              ),
              Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 100,
                  color: Color(0xFFD72626),
                  child: Text(
                    "Limited time deal",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
              Container(
                padding: EdgeInsets.only(top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xFFBF2E2E),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xFFFFC107),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xFF4CAF50),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
