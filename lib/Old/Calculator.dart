import 'package:flutter/material.dart';
import 'package:ui/Old/cont.dart';
import 'package:ui/Old/cont2.dart';

class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  String _display = '0';
  double _result = 0;
  String _currentInput = '';
  String _previousOperator = '';
  bool _isOperatorClicked = false;
  double sec_result = 0;

  void buttonpressed(String number) {
    setState(() {
      if (number == 'AC') {
        _display = '0';
        _currentInput = '';
        _result = 0;
        _previousOperator = '';
        _isOperatorClicked = false;
      } else if (number == '=') {
        _evaluate();
        _previousOperator = '';
        _isOperatorClicked = false;
      } else if (_isOperator(number)) {
        if (!_isOperatorClicked) {
          _evaluate();
          _isOperatorClicked = true;
        }
        _previousOperator = number;
      } else {
        if (_display == '0' || _isOperatorClicked) {
          _display = number;
          _isOperatorClicked = false;
        } else {
          _display += number;
        }
        _currentInput = double.parse(_display).toString();
      }
    });
  }

  void _evaluate() {
    if (_previousOperator.isNotEmpty) {
      switch (_previousOperator) {
        case '+':
          _result += double.parse(_currentInput);
          break;
        case '-':
          _result -= double.parse(_currentInput);
          break;
        case '*':
          _result *= double.parse(_currentInput);
          break;
        case '/':
          _result /= double.parse(_currentInput);
          break;
      }
    } else {
      _result = double.parse(_currentInput);
    }
    _display = _result.toString();
    _currentInput = _display;
  }

  bool _isOperator(String text) {
    return text == '+' || text == '-' || text == '*' || text == '/';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.calculate),
        title: Text("Calculator"),
        bottom: PreferredSize(
            preferredSize: Size(0, 100),
            child: Text(
              _display,
              style: TextStyle(fontSize: 50),
            )),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        primary: false,
        childAspectRatio: 1,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        mainAxisSpacing: 40,
        crossAxisSpacing: 30,
        children: [
          cont(number: "1", buttonpressed: () => buttonpressed("1")),
          cont(number: "2", buttonpressed: () => buttonpressed("2")),
          cont(number: "3", buttonpressed: () => buttonpressed("3")),
          cont2(
              operation: "+",
              color: Color(0xff007b7c),
              buttonpressed: () => buttonpressed("+")),
          cont(number: "4", buttonpressed: () => buttonpressed("4")),
          cont(number: "5", buttonpressed: () => buttonpressed("5")),
          cont(number: "6", buttonpressed: () => buttonpressed("6")),
          cont2(
              operation: "-",
              color: Color(0xff007b7c),
              buttonpressed: () => buttonpressed("-")),
          cont(number: "7", buttonpressed: () => buttonpressed("7")),
          cont(number: "8", buttonpressed: () => buttonpressed("8")),
          cont(number: "9", buttonpressed: () => buttonpressed("9")),
          cont2(
              operation: "*",
              color: Color(0xff007b7c),
              buttonpressed: () => buttonpressed("*")),
          cont(number: "#", buttonpressed: () => buttonpressed("#")),
          cont(number: "0", buttonpressed: () => buttonpressed("0")),
          cont(number: "/", buttonpressed: () => buttonpressed("/")),
          cont2(
              operation: "=",
              color: Colors.lightGreen,
              buttonpressed: () => buttonpressed("=")),
          cont2(
              operation: "AC",
              color: Colors.red,
              buttonpressed: () => buttonpressed("AC"))
        ],
      ),
    );
  }
}
