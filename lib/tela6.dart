import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Lista de Tarefas'),
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        //elevation: 0,
        title: const Text(
          'Minhas Tarefas',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.black87, size: 33),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    activeColor: Colors.blue,
                    onChanged: (bool? value) {},
                  ),
                  const SizedBox(width: 15),
                  const Text('Estudar Flutter', style: TextStyle(fontSize: 20)),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  const SizedBox(width: 15),
                  const Text(
                    'Fazer exercícios',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  const SizedBox(width: 15),
                  const Text('Ler livro', style: TextStyle(fontSize: 20)),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  const SizedBox(width: 15),
                  const Text(
                    'Praticar projeto',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  const SizedBox(width: 15),
                  const Text('Descansar', style: TextStyle(fontSize: 20)),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    activeColor: Colors.blue,
                    onChanged: (bool? value) {},
                  ),
                  const SizedBox(width: 15),
                  const Text('Jogar', style: TextStyle(fontSize: 20)),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  const SizedBox(width: 15),
                  const Text('Assistir jogo', style: TextStyle(fontSize: 20)),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    activeColor: Colors.blue,
                    onChanged: (bool? value) {},
                  ),
                  const SizedBox(width: 15),
                  const Text('Elaborar provas', style: TextStyle(fontSize: 20)),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1, height: 20),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    activeColor: Colors.blue,
                    onChanged: (bool? value) {},
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'Assistir Lewis Hamilton apanhar de Max Verstappen ',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 60),

              const Text(
                '4 de 9 concluídas',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),

              LinearProgressIndicator(
                value: 0.45,
                backgroundColor: Colors.grey.shade300,
                color: Colors.green,
                minHeight: 8,
                borderRadius: BorderRadius.circular(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
