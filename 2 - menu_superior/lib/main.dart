import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MEU APP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Adicione a ação de pesquisa aqui
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Adicione a ação de configurações aqui
            },
          ),
        ],
        leading: Icon(Icons.person),
      ),
      body: Center(
        child: Text(
          'OLÁ', // Altere para "OLÁ"
          style: TextStyle(
            fontSize: 30, // Tamanho da fonte maior
            fontWeight: FontWeight.bold, // Negrito
          ),
        ),
      ),
    );
  }
}
