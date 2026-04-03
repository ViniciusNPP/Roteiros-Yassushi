import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/exercicio_5/mercado_screen.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/task_screen.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_A.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_B.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_C.dart';
import 'package:flutter_application_1/services/storage_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final StorageService storage = StorageService();
  @override
  void initState() {
    super.initState();
    storage.savePage("homeScreen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HOME SCREEN")),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TaskScreen()),
                  );
                },
                child: Text("Tela de Tarefas"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TelaA()),
                  );
                },
                child: Text("Tela A"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TelaB()),
                  );
                },
                child: Text("Tela B"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TelaC()),
                  );
                },
                child: Text("Tela C"),
              ),
            ].map((widget) => Padding(
                padding: const EdgeInsetsGeometry.only(right: 10, bottom: 20),
                child: widget,
            )).toList(),
            //Serve para adicionar um espaçamento entre os botões
            //Fiz dessa forma pq é mais legal do que o sizedbox
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const MercadoScreen()),
                    );
                  },
                  child: Text("Mercado do Zé"),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
