import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
    HomeScreen({Key key, this.title}) : super(key: key);
     final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   String output = "0";

  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText){

    if(buttonText == "CLEAR"){
      
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else if (buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "X"){

      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";

    } else if(buttonText == "."){

      if(_output.contains(".")){
        print("Already conatains a decimals");
        return;

      } else {
        _output = _output + buttonText;
      }

    } else if (buttonText == "="){

      num2 = double.parse(output);

      if(operand == "+"){
        _output = (num1 + num2).toString();
      }
      if(operand == "-"){
        _output = (num1 - num2).toString();
      }
      if(operand == "X"){
        _output = (num1 * num2).toString();
      }
      if(operand == "/"){
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else {

      _output = _output + buttonText;

    }

    print(_output);

    setState(() {
      
      output = double.parse(_output).toStringAsFixed(2);

    });

  }

  Widget buildButton(String value) {
    return Expanded(
      child: MaterialButton(
        padding: EdgeInsets.all(25),
        child: Text(value,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 25.0)),
        onPressed: () {
          buttonPressed(value);
        },
        splashColor: Colors.yellow,
        color: Colors.orange[600],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: new Column(
          children: [
            Container(
                alignment: Alignment.centerRight,
                padding: new EdgeInsets.symmetric(horizontal: 20,vertical: 100.0),
                child: Text(output, style: TextStyle(fontSize: 48.0))),
            Expanded(child: Divider(color: Colors.transparent,)),
            Column(children: [
              Row(
                children: <Widget>[
                  buildButton('7'),
                  buildButton('8'),
                  buildButton('9'),
                  buildButton('/'),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton('4'),
                  buildButton('5'),
                  buildButton('6'),
                  buildButton('X'),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton('1'),
                  buildButton('2'),
                  buildButton('3'),
                  buildButton('-'),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton('.'),
                  buildButton('0'),
                  buildButton('00'),
                  buildButton('+'),
                ],
              ),
              Row(
                children: <Widget>[buildButton('CLEAR'), buildButton('=')],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
