import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
final String texto;
final Widget screen;

const CustomButton({ 
    super.key,
    required this.texto,
    required this.screen,
  });

  @override
  State<CustomButton> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButton> {
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      child: Text(widget.texto),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.screen,
          ),
        );
      },
    );
  }
}