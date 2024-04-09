import 'package:flutter/material.dart';

class MyAppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarCustom({super.key});

@override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // Agrega aquí la acción que deseas realizar al presionar el botón
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
