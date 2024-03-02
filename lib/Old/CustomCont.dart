import 'package:flutter/material.dart';

class customcont extends StatelessWidget {
  customcont(
      {super.key,
      required this.customcolor_icon,
      required this.customcolor_cont,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.customcolor_border,
      required this.icon});
  final Color customcolor_icon;
  final Color customcolor_cont;
  final Color customcolor_border;
  final String text1;
  final String text2;
  final String text3;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      width: 100,
      height: 150,
      decoration: BoxDecoration(
          color: customcolor_cont,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: customcolor_border, width: 4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: customcolor_icon),
          SizedBox(
            height: 50,
          ),
          Text(
            text1,
            style: TextStyle(fontSize: 20, color: Colors.black45),
          ),
          Row(
            children: [
              Text(
                text2,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.black),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text3,
                style: TextStyle(color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
