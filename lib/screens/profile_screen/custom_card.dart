import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  const CustomCards({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: Colors.brown[400]),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.brown[400], fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
