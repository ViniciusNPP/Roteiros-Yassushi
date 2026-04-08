import 'package:flutter/material.dart';
import 'package:roteiro_2/widgets/task_tile.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  TextEditingController controller = TextEditingController();
  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tarefas"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Limpar a casa",
                    labelText: "Tarefa",
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      tarefas.add(value);
                      controller.clear();
                    });
                  },
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    tarefas.add(controller.text);
                    controller.clear();
                  });
                },
                child: Text("Adicionar"),
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(
            width: 300,
            height: 300,
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (context, index) => TaskTile(
                texto: tarefas[index],
                onPressed: () => setState(() {
                  tarefas.removeAt(index);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
