import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaDetalhe extends StatefulWidget {
  final String nome;
  const TelaDetalhe({super.key, this.nome = ""});

  @override
  State<TelaDetalhe> createState() => _TelaDetalheState();
}

class _TelaDetalheState extends State<TelaDetalhe> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Você está na Tela Detalhe!"),
              SizedBox(width: 20),
              ElevatedButton(
                child: Text("Voltar"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(width: 20),
              if (widget.nome.isNotEmpty) Text("Olá, ${widget.nome}"),
            ],
          ),
          SizedBox(width: 20, height: 20),
          Row(
            children: [
              Container(
                width: 200,
                height: 40,
                margin: EdgeInsets.only(right: 20),
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onSubmitted: (value) {
                    Navigator.pop(context, value.isNotEmpty ? value : "0");
                  },
                  decoration: const InputDecoration(
                    labelText: 'Digite um número',
                    hintText: '10',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Text("Dentro do input, aperte ENTER para enviar o valor")
            ],
          ),
        ],
      ),
    );
  }
}
