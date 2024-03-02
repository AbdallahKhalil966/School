import 'package:flutter/material.dart';

class cont2 extends StatelessWidget {
  cont2(
      {super.key,
      required this.operation,
      required this.color,
      required this.buttonpressed});
  final String operation;
  final Color color;
  final void Function() buttonpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: InkWell(
        onTap: buttonpressed,
        child: Center(
          child: Text(
            operation,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
