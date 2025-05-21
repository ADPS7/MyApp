import 'package:flutter/material.dart';

import 'feature/home/presntation/view/vista_bienvenido.dart';
import 'feature/home/presntation/view/vista_cargando.dart';
import 'feature/home/presntation/view/vista_error.dart';
import 'feature/home/presntation/view/vista_principal.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cargando(),
    ),
  );
}
