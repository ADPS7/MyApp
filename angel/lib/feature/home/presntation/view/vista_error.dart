import 'package:flutter/material.dart';

Scaffold error() {
  return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 🔴 Esto centra verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // (opcional) centra horizontalmente
          children: [
            Image.network("https://media.istockphoto.com/id/827247322/es/vector/se%C3%B1al-de-peligro-vector-icono-ilustraci%C3%B3n-de-atenci%C3%B3n-atenci%C3%B3n-negocio-concepto-simple-plana.jpg?s=612x612&w=0&k=20&c=iEXTniBp9NMjwYdYvsAuaV6NyvMHAmOtTlfXT5ipR-w="),
             // Espacio entre imagen y texto
            Text("Error"),
          ],
        ),
      ),
    );
}