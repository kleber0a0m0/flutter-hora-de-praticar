import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          margin: EdgeInsets.all(100),
          decoration: BoxDecoration(
            color: Colors.purple, // Cor do retângulo roxo
            border: Border.all(
              color: Colors.green, // Cor da borda verde
              width: 2.0, // Largura da borda
            ),
          ),
          child: Text(
            'Olá',
            style: TextStyle(
              color: Colors.black, // Cor do texto preto
              fontSize: 20, // Tamanho do texto
            ),
          ),
        ),
      ),
    );
  }
}
