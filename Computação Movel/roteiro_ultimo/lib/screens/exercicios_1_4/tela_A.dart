// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/task_screen.dart';
import 'package:flutter_application_1/services/storage_service.dart';

void main() {
  runApp(const TelaA());
}

class TelaA extends StatefulWidget {
  const TelaA({ super.key });

  @override
  State<TelaA> createState() => _TelaAState();
}

class _TelaAState extends State<TelaA> {
 final StorageService storage = StorageService();
  @override
  void initState() {
    super.initState();
    storage.savePage("telaA");
  }
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela A"),
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
            Text("Bem vindo a Tela A!"),
          ],
        ),
      ),
    );
  }
}