import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const id = 'HOME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Instant',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.chat,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'instant',
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/instant.jpg',
                ),
                radius: 70.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
