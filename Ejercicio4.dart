class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro({
    required this.titulo,
    required this.autor,
    required this.anioPublicacion,
  });
}

class Biblioteca {
  List<Libro> _libros = [];

  void agregarLibro(Libro libro) {
    this._libros.add(libro);
  }

  void eliminarLibro(Libro libro) {
    this._libros.remove(libro);
  }

  List<Libro> buscarAutor(String autor) {
    return this._libros.where((libro) => libro.autor == autor).toList();
  }

  void listarLibrosAnio() {
    List<Libro> libs = this._libros;
    libs.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    libs.forEach((libro){
      
        print('Titulo: '+libro.titulo+' anio: ${libro.anioPublicacion}');
    });
  }
}

void main() {
  final biblioteca = Biblioteca();

  final libro1 = Libro(
    titulo: 'Orgullo y Prejuicio',
    autor: 'Jane Austen',
    anioPublicacion: 1813,
  );
  final libro2 = Libro(
    titulo: 'Cien años de soledad',
    autor: 'Gabriel García Márquez',
    anioPublicacion: 1967,
  );

  biblioteca.agregarLibro(libro1);
  biblioteca.agregarLibro(libro2);

  print('Libros listados por año de publicación:');
  biblioteca.listarLibrosAnio();

  final librosGabriel = biblioteca.buscarAutor('Gabriel García Márquez');
  print('\nLibros de Gabriel García Márquez:');
  librosGabriel.forEach((libro) {
    print('Título: ${libro.titulo}, Autor: ${libro.autor}, Año de publicación: ${libro.anioPublicacion}');
  });

  biblioteca.eliminarLibro(libro2);
  print('\nLibros listados por año de publicación después de eliminar un libro:');
  biblioteca.listarLibrosAnio();
}