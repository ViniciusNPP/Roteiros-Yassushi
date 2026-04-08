import 'package:flutter/material.dart';
import 'package:roteiro_2/screens/detail_screen.dart';
import 'package:roteiro_2/screens/products_screen.dart';
import 'package:roteiro_2/screens/profile_screen.dart';
import 'package:roteiro_2/screens/task_list_screen.dart';
import 'package:roteiro_2/widgets/custom_button.dart';
import 'package:roteiro_2/widgets/title_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ super.key });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CustomButton( //Vai para a tela de perfil
                texto: "Ir para Perfil",
                screen: ProfileScreen(),
              ),
              SizedBox(width: 20),
              CustomButton( //Vai para a tela de detalhes
                texto: "Ir para Detalhe",
                screen: DetailScreen(),
              ),
              SizedBox(width: 20),
              CustomButton(
                texto: "Ir para Produtos",
                screen: ProductsScreen(),
              )
            ],
          ),
          SizedBox(width: 20, height: 20,),
          Row(
            children: [
              TitleText(texto: "Um texto daqueles que é bem grande para ocupar bastante espaço")
            ],
          ),
          SizedBox(width: 20, height: 20,),
          Row(
            children: [
              CustomButton(texto: "Lista de tarfas", screen: TaskListScreen())
            ],
          )
        ],       
      ),
    );
  }
}