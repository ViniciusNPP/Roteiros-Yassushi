import 'package:flutter/material.dart';
import 'package:roteiro_2/screens/list_screen.dart';
import 'package:roteiro_2/widgets/custom_button.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({ super.key });

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Produtos"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
      ),
      body: Column(
        children: [
          CustomButton(texto: "Lista de produtos", screen: ListScreen())
        ],
      ),
    );
  }
}