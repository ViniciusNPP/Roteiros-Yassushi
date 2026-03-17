import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/animation_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Tab(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimationPage()),
                );
              },
              child: Text("Ir para animações"),
            ),
          ],
        ),
      ),
    );
  }
}