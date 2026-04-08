import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String texto;
  final VoidCallback onPressed;
  const TaskTile({ 
    super.key, 
    required this.texto,
    required this.onPressed
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.texto),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: widget.onPressed,
      ),
    );
  }
}