import 'package:flutter/material.dart';

class ProductTile extends StatefulWidget {
  final String texto;
  final String preco;
  const ProductTile({ 
    super.key, 
    required this.texto,
    required this.preco,
  });

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.point_of_sale),
      title: Text(widget.texto),
      subtitle: Text("R\$ ${widget.preco}"),
      trailing: Icon(Icons.shopping_cart),
    );
  }
}