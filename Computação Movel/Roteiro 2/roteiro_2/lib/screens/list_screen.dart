import 'package:flutter/material.dart';
import 'package:roteiro_2/widgets/product_tile.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<String> produtos = [
    "Arroz",
    "Feijão",
    "Macarrão",
    "Leite",
    "Café",
  ];
  final List<String> precos = ["12,9", "18,7", "7", "20,99", "99,99"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Produtos"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: 200,
        child: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) =>
              ProductTile(texto: produtos[index], preco: precos[index]),
        ),
      ),

      // ListView(
      //   children: [
      //     //for cria cada listtile do listview baseado nos itens de produtos
      //     for(int i = 0; i < produtos.length; i++)
      //       ListTile(title: Text(produtos[i]))
      //   ],
      // ),
    );
  }
}
