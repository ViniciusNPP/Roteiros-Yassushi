import 'package:flutter/material.dart';

class TitleText extends StatefulWidget {
final String texto;
const TitleText({ super.key, required this.texto});

  @override
  State<TitleText> createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  bool mostrar = false;

  @override
  Widget build(BuildContext context){
    return Column( // Usamos Column para colocar um embaixo do outro
      children: [
        ElevatedButton(
          child: const Text("Mostrar/Esconder texto"),
          onPressed: () {
            setState(() {
              // O onPressed só muda o dado!
              mostrar = !mostrar;
            });
          },
        ),
        
        // O "IF" de verdade acontece aqui, no desenho da tela:
        if (mostrar) 
          Text(widget.texto),
      ],
    );
  }
}