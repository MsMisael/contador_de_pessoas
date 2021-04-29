import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final int count;
  final String title;
  final String description;
  AppBarWidget({this.title, this.count, this.description})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            decoration: BoxDecoration(color: Colors.red),
            height: 250,
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$title: $count",
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                      Text(
                        description,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
}
