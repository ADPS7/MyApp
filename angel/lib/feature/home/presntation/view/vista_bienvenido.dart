import 'package:flutter/material.dart';

Scaffold vista_bienvenido() {
  return Scaffold(
    body: Stack(
      fit: StackFit.expand,
      children: [
        // Fondo con imagen
        Opacity(
          opacity: 1,
          child: Image.asset(
            'assets/fondo.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Contenido centrado
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Referencias de libros",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Asegúrate que contraste con el fondo
                ),
              ),
              SizedBox(height: 20), // Espacio entre texto y botón
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print('¡Botón presionado!');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Bienvenido!'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
