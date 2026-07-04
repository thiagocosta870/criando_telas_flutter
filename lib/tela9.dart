import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu de Navegação',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Menu de Navegação'),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.deepPurple,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: Column(
        children: [
          const SizedBox(height: 70),
          ListTile(
            leading: Icon(Icons.home_outlined, color: Colors.black87, size: 30),
            title: Text(
              'Início',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black12,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 15),
          ListTile(
            leading: const Icon(Icons.search, color: Colors.black87),
            title: const Text(
              'Explorar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black12,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 15),
          ListTile(
            leading: const Icon(Icons.favorite_border, color: Colors.black87),
            title: const Text(
              'Favoritos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black12,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 15),
          ListTile(
            leading: const Icon(Icons.chat_bubble_outline, color: Colors.black87),
            title: const Text(
              'Mensagens',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black12,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 15),
          ListTile(
            leading: const Icon(Icons.settings_outlined, color: Colors.black87),
            title: const Text(
              'Configurações',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            onTap: () {},
          ),
          const Spacer(),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 80),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 3,
              ),

              // O TRUQUE PARA VIRAR A SETA PARA A ESQUERDA:
              icon: Transform.flip(
                flipX: true, // Espelha horizontalmente
                child: const Icon(Icons.logout, size: 28),
              ),

              label: const Text(
                'Sair',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
