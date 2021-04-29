import 'package:flutter/material.dart';

import 'widgets/appbar_widget.dart';

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
        _infoText = "Estamos com vagas!";
      } else {
        _infoText = "Estamos lotados!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        count: _people,
        title: "Pessoas",
        description: _infoText,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                      onPressed: () {
                        _changePeople(-1);
                      },
                      child: Text(
                        "Saiu um cliente!",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )),
                  FlatButton(
                      onPressed: () {
                        _changePeople(1);
                      },
                      child: Text(
                        "Recebemos um novo cliente!",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
