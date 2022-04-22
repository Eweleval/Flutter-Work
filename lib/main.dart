import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  Widget buttons(String text, Color color, Color textColor) {
    return RaisedButton
      (onPressed: (){
    },
      child: Text(text,
        style: TextStyle(
            fontSize: 35,
            color: textColor
        ),
      ),
      shape: const CircleBorder(),
      color: color,
      padding: const EdgeInsets.all(20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(padding: EdgeInsets.all(10.0),
                  child: Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                        fontSize:  100
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons('AC', Colors.grey, Colors.black),
                buttons('+/-', Colors.grey, Colors.black),
                buttons('%', Colors.grey, Colors.black),
                buttons('/', Colors.amber.withAlpha(720), Colors.white),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons('7', Colors.grey.withAlpha(850), Colors.white),
                buttons('8', Colors.grey.withAlpha(850), Colors.white),
                buttons('9', Colors.grey.withAlpha(850), Colors.white),
                buttons('x', Colors.amber.withAlpha(720), Colors.white),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons('4', Colors.grey.withAlpha(850), Colors.white),
                buttons('5', Colors.grey.withAlpha(850), Colors.white),
                buttons('6', Colors.grey.withAlpha(850), Colors.white),
                buttons('-', Colors.amber.withAlpha(720), Colors.white),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons('1', Colors.grey.withAlpha(850), Colors.white),
                buttons('2', Colors.grey.withAlpha(850), Colors.white),
                buttons('3', Colors.grey.withAlpha(850), Colors.white),
                buttons('+', Colors.amber.withAlpha(720), Colors.white),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: (){
                  },
                  shape: const StadiumBorder(),
                  child: const Text('0',
                    style:  TextStyle(
                        fontSize: 35,
                        color: Colors.white
                    ),
                  ),
                  color: Colors.grey[850],
                ),
                buttons('.', Colors.grey.withAlpha(850), Colors.white),
                buttons('=', Colors.amber.withAlpha(720), Colors.white),
              ],
            ),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}

