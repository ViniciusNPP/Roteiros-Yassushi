import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'dart:math';

import 'package:flutter_application_1/services/storage_service.dart';

class MercadoScreen extends StatefulWidget {
  const MercadoScreen({super.key});

  @override
  State<MercadoScreen> createState() => _MercadoScreenState();
}

class _MercadoScreenState extends State<MercadoScreen> {
  final StorageService storage = StorageService();
  List<String> carrinho = [];
  List<String> carrinhoPrecos = [];
  int maxPreco = 30;
  List<String> produtos = [
    "Arroz",
    "Feijão",
    "Macarrão",
  ];
  List<String> precos = [];

  @override
  void initState() {
    super.initState();
    
    storage.savePage("mercadoScreen");
    loadCarrinho();
    loadPrecos();
    
    precos = List.generate(produtos.length, (index) =>
      "R\$ ${(Random().nextDouble() * maxPreco).toStringAsFixed(2)}"
    );
  }

  Future<void> loadCarrinho() async {
    final loadedCarrinho = await storage.loadCarrinho();
    setState(() {
      carrinho = loadedCarrinho;
    });
  }

  Future<void> saveCarrinho() async {
    await storage.saveCarrinho(carrinho);
  }

  Future<void> savePrecos() async {
    await storage.savePrecos(carrinhoPrecos);
  }

  Future<void> loadPrecos() async {
    final loadedPrecos = await storage.loadPrecos();
    setState(() {
      carrinhoPrecos = loadedPrecos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mercado do Zé"),
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            ),
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Carrinho", style: TextStyle(fontSize: 20)),
                        if (carrinho.isEmpty) Text("Carrinho vazio"),
                        Expanded(
                          child: ListView.builder(
                            itemCount: carrinho.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(carrinho[index]),
                                subtitle: Text(carrinhoPrecos[index]),
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    setState(() {
                                      carrinho.removeAt(index);
                                      carrinhoPrecos.removeAt(index);
                                      saveCarrinho();
                                      savePrecos();
                                    });
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Produtos", style: TextStyle(fontSize: 20)),
                        if (produtos.isEmpty) Text("Nenhum produto no loja"),
                        Expanded(
                          child: ListView.builder(
                            itemCount: produtos.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(produtos[index]),
                                subtitle: Text(precos[index]),
                                trailing: IconButton(
                                  icon: const Icon(Icons.shopping_cart),
                                  onPressed: () {
                                    setState(() {
                                      carrinho.add(produtos[index]);
                                      carrinhoPrecos.add(precos[index]);
                                      saveCarrinho();
                                      savePrecos();
                                    });
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
