import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'Este é meu ',
            style: TextStyle(
              fontSize: 24,
              color: Colors.green, // Cor do texto antes de "App"
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'App',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue, // Cor do texto "App"
                  fontWeight: FontWeight.bold, // Texto em negrito
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {
              // Lógica para adicionar um usuário aqui
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.red, // Cor de fundo do botão
            ),
            child: Text(
              'Adicionar usuário',
              style: TextStyle(
                color: Colors.white, // Cor do texto
              ),
            ),
          ),
        ),
      ),
    );
  }
}
