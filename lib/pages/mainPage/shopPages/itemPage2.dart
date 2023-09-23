import 'package:flutter/material.dart';

class ItemPage2 extends StatefulWidget {
  ItemPage2({Key? key}) : super(key: key);

  List<String> product = [
    'Bnadhani Saree',
    'Patola Silk Saree',
    'Handicrafts',
    'Chaniya Choli',
    'Jewellry',
    'Tribal Art',
  ];
  List<String> location = [
    'Jamnagar',
    'Patan',
    'Bhuj',
    'Ahemdabad',
    'Rajkot',
    'Patan',
  ];

  @override
  State<ItemPage2> createState() => _ItemPage2State();
}

class _ItemPage2State extends State<ItemPage2> {
  List<bool> isHoveringList = List.generate(6, (index) => false);
  List<String> product = [
    'Silk Saree',
    'Carpets',
    'Bangles',
    'Ittar',
    'Wooden Crafts',
    'Silk Saree',
  ];
  List<String> location = [
    'Banaras',
    'Bhadoi',
    'Firozabad',
    'Kanauj',
    'Saharanpur',
    'Banaras',
  ];
  List<String> yu = [
    "lib/images/guj1.png",
    "lib/images/guj2.png",
    "lib/images/guj3.png",
    "lib/images/guj4.png",
    "lib/images/guj5.png",
    "lib/images/Up1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17181D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/images/image (27).png"),
                    fit: BoxFit.cover)),
            height: 130,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Gujrat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
            color: Color(0xFF1A9EB0),
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
            height: 500,
            child: ListView.builder(
              itemCount: product.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.topCenter,
                  height: 100,
                  color: Color(0xFF17181D),
                  child: ListTile(
                    leading: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        image: DecorationImage(image: AssetImage(yu[index])),
                      ),
                    ),
                    title: Text(
                      widget.product[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          widget.location[index],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        // Add your action when clicking "See Sellers"
                      },
                      child: Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFF1A9EB0),
                          ),
                          color: isHoveringList[index]
                              ? Color(0xFF1A9EB0)
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHoveringList[index] = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHoveringList[index] = false;
                              });
                            },
                            child: Text(
                              'See Sellers',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
