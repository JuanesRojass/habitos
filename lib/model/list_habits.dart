import 'package:flutter/material.dart';

class Habitos{

  IconData icon;
  String nombre;
  String? descripcion;

  Habitos({
    required this.icon,
    required this.nombre,
    this.descripcion
  });

}

final habitos = List<Habitos>.from([
  Habitos(icon: Icons.ac_unit_rounded, nombre: "Baño frío", descripcion: "Baño con hielos en la mañana"),
  Habitos(icon: Icons.book_sharp, nombre: "Leer Libro", descripcion: "Leer Hábitos Atómicos")
]);