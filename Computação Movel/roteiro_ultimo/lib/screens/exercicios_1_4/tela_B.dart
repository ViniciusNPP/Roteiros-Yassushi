// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/task_screen.dart';
import 'package:flutter_application_1/services/storage_service.dart';

void main() {
  runApp(const TelaB());
}

class TelaB extends StatefulWidget {
  const TelaB({ super.key });

  @override
  State<TelaB> createState() => _TelaBState();
}

class _TelaBState extends State<TelaB> {
 final StorageService storage = StorageService();
  @override
  void initState() {
    super.initState();
    storage.savePage("telaB");
  }
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela B"),
        leading: IconButton(
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskScreen())),
          },
          icon: const Icon(Icons.arrow_back),
        ),  
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Bem vindo a Tela B!"),
          ],
        ),
      ),
    );
  }
}