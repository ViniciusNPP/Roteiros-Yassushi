import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
const ProfileScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: const Text('Perfil'),
      ),
    );
  }
}