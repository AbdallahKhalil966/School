import 'package:flutter/material.dart';

class cont extends StatelessWidget {
  const cont({super.key, required this.number, required this.buttonpressed});
  final String number;
  final void Function() buttonpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(color: Color(0xff007b7c), width: 2)),
      child: InkWell(
        onTap: buttonpressed,
        child: Center(
          child: Text(
            number,
            style: TextStyle(fontSize: 35, color: Color(0xff007b7c)),
          ),
        ),
      ),
    );
  }
}
