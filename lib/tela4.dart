import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card de Produto",
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: "Card de Produto"),
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
      backgroundColor: Colors.white70,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsetsGeometry.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/images/fone.png'),
                ),
                const SizedBox(height: 40),
                Text(
                  'Fone de Ouvido',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  'Fone sem fio com cancelameto \nde ruído ativo e qlta qualidade sonora.',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 20),
                Text(
                  'R\$ 299,90',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(50, 55),
                ),
                 child: Row(
                  children: [
                    Icon(Icons.shopping_cart_outlined, color: Colors.white,size: 30,),
                    Padding(padding: const EdgeInsetsGeometry.symmetric(horizontal: 25)),
                    Text('Adicionar ao Carrinho', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
