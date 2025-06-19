import 'package:app/feature/home/presntation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/home/presntation/view/vista_bienvenido.dart';
import 'feature/home/presntation/view/vista_cargando.dart';
import 'feature/home/presntation/view/vista_error.dart';
import 'feature/home/presntation/view/vista_principal.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return MaterialApp(
            home: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoadSuccess){
                return Principal(libros: state.libro.libros);
              } else if (state is HomeLoadInProgress){
                return Loading();
              } else if (state is HomeLoadFailure){
                return Failure();
              }
              return Bienvenido();
            },
          ));
        },
      ),
    );
  }
}
