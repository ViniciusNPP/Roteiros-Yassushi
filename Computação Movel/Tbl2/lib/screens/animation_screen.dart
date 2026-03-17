import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  State<AnimationPage> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationPage> {
  double altura_retangulo = 100;
  Color cor_retangulo = Colors.amber;

  double largura_floco = 100;
  double altura_floco = 100;
  Color cor_floco = Colors.amber;

  double largura_quadrado = 50;
  Color cor_quadrado = Colors.amber;

  double opacidade = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimationContainer")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: altura_retangulo,
              width: 100,
              color: cor_retangulo,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (altura_retangulo == 100) {
                    altura_retangulo = 250;
                    cor_retangulo = const Color.fromARGB(255, 255, 27, 27);
                  } else {
                    altura_retangulo = 100;
                    cor_retangulo = Colors.amber;
                  }
                });
              },
              child: const Text("Animar"),
            ),
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              child: Icon(Icons.ac_unit_rounded, size: largura_floco, color: cor_floco),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (largura_floco == 100) {
                    largura_floco = 250;
                    cor_floco = Colors.black;
                  } else {
                    largura_floco = 100;
                    cor_floco = Colors.yellow;
                  }
                });
              },
              child: const Text("Animar"),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacidade,
              child: Text("Nah, I do win"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacidade = opacidade == 1 ? 0 : 1;
                });
              },
              child: const Text("Mudar"),
            ),
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: largura_quadrado,
              height: 50,
              child: Card(
                color: cor_quadrado,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  largura_quadrado = largura_quadrado + 100;
                });
                await Future.delayed(const Duration(seconds: 1));
                setState(() {
                  largura_quadrado = largura_quadrado - 100;
                });

              },
              child: const Text("Mudar"),
            ),
          ],
        ),
      ),
    );
  }
}