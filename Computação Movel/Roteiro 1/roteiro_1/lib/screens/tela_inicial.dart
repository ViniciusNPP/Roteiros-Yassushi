import 'package:flutter/material.dart';
import 'package:roteiro_1/screens/tela_detalhe.dart';

class TelaInicial extends StatefulWidget {

  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String numero = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Você está na Tela Inicial!"),
              SizedBox(width: 20),
              ElevatedButton(
                child: Text("Ir para Detalhe"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaDetalhe()),
                  );
                },
              ),
              SizedBox(width: 20),
              ElevatedButton(
                child: Text("Enviar nome 'Maria' para tela Detalhe"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaDetalhe(nome: "Maria"),
                    ),
                  );
                },
              ),              
            ],
          ),
          SizedBox(width: 20, height: 20),
          Row(
            children: [
              Text("Valor atual: $numero"),
              SizedBox(width: 20),
              ElevatedButton(
                child: Text("Escolher número"),
                onPressed: () async {
                  final String result = await Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const TelaDetalhe()
                    )
                  );

                  if (result.isNotEmpty) {
                    setState(() {
                      numero = result;
                    });
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
