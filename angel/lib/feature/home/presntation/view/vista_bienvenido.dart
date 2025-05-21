import 'package:flutter/material.dart';
import 'package:app/feature/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bienvenido extends StatelessWidget {
  const Bienvenido({
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
                  final homeBloc = BlocProvider.of<HomeBloc>(context);
                    homeBloc.add(HomeSearchPressed());
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
}

