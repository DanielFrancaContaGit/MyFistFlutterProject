import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));


class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {


  int _nijaLevel = 0;

  String squadMaisLindo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
       title: Text('App do pikachu'), 
       centerTitle: true,
       backgroundColor: Colors.grey[850],
       elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         CircularButton(
           height: 60,
           width: 60,
           color: Colors.green,
           icon: Icon(
             Icons.add
           ),
           onClick: () {
             setState(() {
               _nijaLevel++;
             });
           },
         ),
         CircularButton(
           height: 60,
           width: 60,
           color: Colors.red,
           icon: Icon(
             Icons.remove
           ),
           onClick: () {
             setState(() {
               _nijaLevel--;
             });
           },
         ),
         FlatButton(
           onPressed: () {
             setState(() {
               if ( squadMaisLindo == 'O squad de Edu'){
                 squadMaisLindo = '';
               } else {
               squadMaisLindo = 'O squad de Edu';
               }
             });
           }, 
           color: Colors.amber,
           child: Text('Qual é o squad mais lindo'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center( 
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pikachu.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Pikachu',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT PIKACHU LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$_nijaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'botdopikachu@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$squadMaisLindo',
                  style: TextStyle(
                    color: Colors.amber[700],
                    fontSize: 30,
                  ),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}


class CircularButton extends StatelessWidget {

  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;

  CircularButton({ this.color, this.height, this.icon, this.onClick, this.width });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, enableFeedback: true, onPressed: onClick),
    );
  }
}