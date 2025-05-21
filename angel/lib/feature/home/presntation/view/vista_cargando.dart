
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
        crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
        children: [
          SizedBox(
            width: 200, // Ajusta el tamaño de la imagen
            height: 200, // Ajusta el tamaño de la imagen
            child: Image.network(
                "https://cdn.pixabay.com/animation/2023/08/11/21/18/21-18-05-265_512.gif"),
          ),
          // Espacio entre imagen y texto
          Text("Cargando..."),
        ],
      ),
    ),
   );
  }
}
