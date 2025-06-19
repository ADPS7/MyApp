class Dato{
  List<Libro> libros = [];
  Dato(Map data){
    for(var item in data["libros"]){
      libros.add(Libro(item));
    }
  }
}

class Libro{
  String? titulo;
  String? autor;
  int? anio;
  String? genero;
  String? imagen;

  Libro(Map vari){
    this.titulo = vari['titulo'];
    this.autor = vari['autor'];
    this.anio = vari['anio'];
    this.genero = vari['genero'];
    this.imagen = vari['imagen'];
  }

}