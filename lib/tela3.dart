import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Simples',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Login Simples'),
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: -1000,
            child: Container(
              width: 1200,
              height: 1200,
              decoration: BoxDecoration(
                color: Colors.blue[400],
                shape: BoxShape.circle,
              ),
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 135),

                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/images/tela2.png'),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Mariano Silvo',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text('marianosilvo@gmail.com', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 150),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      //Primeira coluna, publicacoes.
                      children: [
                        const Text(
                          '128',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Publicações',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      //Segunda coluna, Seguidores
                      children: [
                        const Text(
                          '340',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Seguidores',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      //Terceira coluna, Seguindo
                      children: [
                        const Text(
                          '512',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Seguindo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 150),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[400],
                    foregroundColor: Colors.white,
                    minimumSize: Size(300, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  onPressed: () {},
                  child: Text(
                    'Editar Perfil',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
