import 'dart:math';
import 'dart:io';

class sorprender{

  String nombre;

  sorprender(String nombre) {
    this.nombre = nombre;
  }

  int calculate(max) {
    var rng = new Random();
    int result = rng.nextInt(max);
    return result;
  }

  void saludo([String nombre]) {
    // si nombre esta vacio usar nombre del constructor
    nombre ?? <String>[nombre = this.nombre];

    int opcion = this.calculate(3);

    switch (opcion) {
      case 0:
        stdout.writeln('hola Mundo!');
        break;
      case 1:
        stdout.writeln('Hola $nombre');
        break;
      case 2:
        stdout.writeln('Mi color favorito es el azul');
        break;
      default:
        stdout.writeln('sabes toco la opcion numero $opcion no tengo nada en especial que decir');
    }
  }
}
