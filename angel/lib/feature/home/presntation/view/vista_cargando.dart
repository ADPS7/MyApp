
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
    fit: StackFit.expand,
    children: [
      // Fondo con imagen
      Opacity(
        opacity: 1,
        child: Image.network("https://i.pinimg.com/1200x/10/8a/5d/108a5d3d6c5f0e71ab2faaa0d3fa9a52.jpg",
          fit: BoxFit.cover,
        ),
      ),
    
    
     Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
        crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
        children: [
          SizedBox(
            width: 200, // Ajusta el tamaño de la imagen
            height: 200, // Ajusta el tamaño de la imagen
            child: Image.network(
                "https://i.postimg.cc/N0QZy69C/Tenor-unscreen.gif"),
          ),
          // Espacio entre imagen y texto
          Text("Cargando..."),
        ],
      ),
    ),
    ]
    )
   );
  }
}

