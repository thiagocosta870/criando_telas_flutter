import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bem vindo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Bem vindo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(height: 400, 'assets/images/login.png')],
          ),
          Text('Bem-vindo!', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
          Text('Que bom ter você aqui.', style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),),
        ],
      ),
    );
  }
}
