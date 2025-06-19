import 'package:flutter/material.dart';
import '../../data/models/libro.dart'; // Asegúrate que el path es correcto

class Principal extends StatelessWidget {
  final List<Libro> libros;

  const Principal({
    super.key,
    required this.libros,
  });

  @override
  Widget build(BuildContext context) {
    print('Libros recibidos: ${libros.length}');
    return Scaffold(
      appBar: AppBar(title: Text('LIBROS')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: libros.length,
        itemBuilder: (context, index) {
          final libro = libros[index];

          return Card(
            elevation: 5,
            margin: EdgeInsets.only(bottom: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    libro.imagen ?? '',
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.broken_image, size: 100),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        libro.titulo ?? 'Sin título',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text('Autor: ${libro.autor ?? 'Desconocido'}'),
                      Text('Año: ${libro.anio?.toString() ?? 'N/A'}'),
                      Text('Género: ${libro.genero ?? 'N/A'}'),
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('DETALLES de: ${libro.titulo}');
                      },
                      child: Text('DETALLES'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
