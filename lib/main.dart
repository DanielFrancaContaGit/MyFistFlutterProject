// import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void getData() async {
    http.Response response = await http.get('http://10.0.2.2:5000/reating');
    Map data =  jsonDecode(response.body);
    print(data);
    print(data['count']);
    // double count = data['mean']; 
    setState(() {
      // _quantiti = count;
      dados = data;
    });
  }

  Map dados = {};

  // double _quantiti = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analise das notas dos filmes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
          title: Text('Analise das notas dos filmes'),
        ),
        body: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Quantidade',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    SizedBox(height: 20,),
                    Text(
                      '${dados['count'] == null ? 0 : dados['count']}',
                      style: TextStyle(
                        fontSize: 20,
                      )
                    ),
                    SizedBox(height: 30,),
                    Text(
                      'Media',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    SizedBox(height: 20,),
                    Text(
                      '${dados['mean'] == null ? 0 : dados['mean']}',
                      style: TextStyle(
                        fontSize: 20,
                      )
                    ),
                    SizedBox(height: 30,),
                    Text(
                      'Mediana',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    SizedBox(height: 20,),
                    Text(
                      '${dados['50%'] == null? 0 : dados['50%']}',
                      style: TextStyle(
                        fontSize: 20,
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getData,
          child: Icon(
            Icons.replay
          ),
        ),
      ),
    );
  }
}
