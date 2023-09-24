import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  List<String> products = [
    'Banarasi Weaving Silk\nSaree',
    'Glass Bangles from\nFirozabad',
    'Carpets from Bhadohi',
  ];

  List<String> update = [
    'Bought last month',
    'Bought last month',
    'Bought last month',
  ];
  List<String> img = [
    'lib/images/image (40).png',
    'lib/images/image (41).png',
    'lib/images/image (42).png',
  ];

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17181D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
          SizedBox(
            height: 25,
          ),
          Container(
            height: 200,
            padding: EdgeInsets.all(16),
            color: Color(0xFF2F2B2B),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your cart is empty',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.0),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 60.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Color(0xFF17181D),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'History',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Card(
                            color: Color(0xFF364345),
                            child: ListTile(
                              leading: Container(
                                width: 84,
                                height: 240,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(widget.img[index]),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text(
                                widget.products[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                              subtitle: Text(
                                widget.update[index],
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 10.0,
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
            ),
          ),
        ],
      ),
    );
  }
}
