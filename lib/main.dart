import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(title: "Contador de pessoas", home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode entrar!";

  void _changePeople(int increment) {
    setState(() {
      _people += increment;
      if (_people < 0) {
        _infoText = "Bug na matrix!!!";
      } else if (_people <= 10) {
        _infoText = "Pode entrar!";
      } else {
        _infoText = "Pode lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas: $_people",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                      onPressed: () {
                        _changePeople(-1);
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40, color: Colors.grey),
                      )),
                  FlatButton(
                      onPressed: () {
                        _changePeople(1);
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40, color: Colors.grey),
                      )),
                ],
              ),
            ),
            Text(
              _infoText,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
