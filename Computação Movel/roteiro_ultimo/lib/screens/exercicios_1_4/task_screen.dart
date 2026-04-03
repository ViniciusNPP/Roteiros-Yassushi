import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_A.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_B.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_C.dart';
import '../../services/storage_service.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final StorageService storage = StorageService();
  List<String> tasks = [];
  @override
  void initState() {
    super.initState();
    storage.savePage("taskScreen");
    loadTasks();
    loadEmail();
    loadPassword();
  }

  Future<void> loadTasks() async {
    final loadedTasks = await storage.loadTasks();
    setState(() {
      tasks = loadedTasks;
    });
  }

  Future<void> addTask() async {
    if (controller.text.isEmpty) return;
    setState(() {
      tasks.add(controller.text);
      controller.clear();
    });
    await storage.saveTasks(tasks);
  }

  Future<void> removeTask(int index) async {
    setState(() {
      tasks.removeAt(index);
    });
    await storage.saveTasks(tasks);
  }

  Future<void> cleanTasks() async {
    setState(() {
      tasks = [];
    });
    await storage.saveTasks(tasks);
  }

  Future<void> loadEmail() async {
    final email = await storage.loadEmail();
    setState(() {
      controllerEmail.text = email;
    });
  }

   Future<void> loadPassword() async {
    final password = await storage.loadPassword();
    setState(() {
      controllerPassword.text = password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
        leading: IconButton(
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
          },
          icon: const Icon(Icons.arrow_back),
        ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(bottom: 20, right: 10),
                  child: TextField(
                    controller: controllerEmail,
                    onChanged: (valor) {
                      storage.saveEmail(valor);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'email@gmail.com.br',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(bottom: 20, right: 10),
                  child: TextField(
                    controller: controllerPassword,
                    onChanged: (String valor) {
                      storage.savePassword(valor);
                    },
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Senha301!',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ],
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Nova tarefa',
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10, width: 10),
                    ElevatedButton(
                      onPressed: addTask,
                      child: const Text('Adicionar'),
                    ),

                    const SizedBox(height: 10, width: 10),
                    ElevatedButton(
                      onPressed: cleanTasks,
                      child: const Text('Limpar Tudo'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10, width: 10),
                    ElevatedButton(
                      onPressed: () {
                        storage.savePage("telaA");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaA()),
                        );
                      },
                      child: Text("Tela A"),
                    ),
                    const SizedBox(height: 10, width: 10),
                    ElevatedButton(
                      onPressed: () {
                        storage.savePage("telaB");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaB()),
                        );
                      },
                      child: Text("Tela B"),
                    ),
                    const SizedBox(height: 10, width: 10),
                    ElevatedButton(
                      onPressed: () {
                        storage.savePage("telaC");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaC()),
                        );
                      },
                      child: Text("Tela C"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (tasks.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(tasks[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => removeTask(index),
                      ),
                    );
                  },
                ),
              ),
            Text("Lista vazia"),
          ],
        ),
      ),
    );
  }
}
