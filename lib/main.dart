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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('oi mundo'),
            FlatButton(
              onPressed: () {},
              color: Colors.amber,
              child: Text('me aperta'),
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(20),
              child: Text('inside container'),
            )
          ],)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.thumb_up),
        backgroundColor: Colors.lightGreenAccent[700],
      ),
      
    );
  }
}
