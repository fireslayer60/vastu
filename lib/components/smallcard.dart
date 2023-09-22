import 'package:flutter/material.dart';

class SmallCard extends StatefulWidget {
  final String text;

  SmallCard({required this.text});

  @override
  _SmallCardState createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 41,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFC602E)),
        borderRadius: BorderRadius.circular(20.5),
        color: isSelected ? Color(0xFFFC602E) : Colors.white,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Color(0xFF)),
        ),
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Text(
          widget.text,
          style:
              TextStyle(color: isSelected ? Colors.white : Color(0xFFFC602E)),
        ),
      ),
    );
  }
}
