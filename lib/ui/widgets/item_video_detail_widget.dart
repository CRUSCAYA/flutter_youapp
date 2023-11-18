import 'package:flutter/material.dart';

class ItemVideoDetailWidegets extends StatelessWidget {
  String text;
  IconData icon;
  ItemVideoDetailWidegets({required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 26.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
