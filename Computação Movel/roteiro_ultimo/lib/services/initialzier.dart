import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/exercicio_5/mercado_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/task_screen.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_A.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_B.dart';
import 'package:flutter_application_1/screens/exercicios_1_4/tela_C.dart';
import 'package:flutter_application_1/services/storage_service.dart';

class Initialzier extends StatefulWidget {
  const Initialzier({super.key});

  @override
  State<Initialzier> createState() => _InitialzierState();
}

class _InitialzierState extends State<Initialzier> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  Future<void> navigate() async {
    final StorageService storage = StorageService();
    final String lastScreen = await storage.loadPage();

    Widget telaDestino = const TaskScreen();

    if (lastScreen.isNotEmpty) {
      switch (lastScreen) {
        case "telaA":
          telaDestino = const TelaA();
          break;
        case "telaB":
          telaDestino = const TelaB();
          break;
        case "telaC":
          telaDestino = const TelaC();
          break;
        case "taskScreen":
          telaDestino = const TaskScreen();
          break;
        case "mercadoScreen":
          telaDestino = const MercadoScreen();
          break;
        case "homeScreen":
          telaDestino = const HomeScreen();
          break;
        default:
          telaDestino = const HomeScreen();
          break;
      }
    }

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => telaDestino),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
