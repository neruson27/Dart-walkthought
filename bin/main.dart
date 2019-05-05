import 'package:dart_walkthought/dart_walkthought.dart';
import 'dart:io';
import 'dart:async';

main(List<String> arguments) {
  stdout.writeln('Bienvenido quieres decirme tu nombre?');
  String name = stdin.readLineSync();

  sorprender saludar = new sorprender(name);
  var numero = saludar.calculate(10);

  stdout.writeln('te voy a dar un numero random $numero');

  saludar.saludo();
}
