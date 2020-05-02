import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu primeiro app'),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent[700],
      ),
      body: Center(
        child: Text(
          'oi mundo',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.lightGreenAccent[700],
      ),
    );
  }
}
