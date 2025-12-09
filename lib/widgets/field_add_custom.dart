import 'package:flutter/material.dart';

class FieldAdd extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;


  const FieldAdd({
    super.key, required this.controller, required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xFFF5F5F7),
    
        // Borde cuando NO está enfocado
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1.2,
          ),
        ),
    
        // Borde cuando está enfocado
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 1.6,
          ),
        ),
    
        prefixIcon: const Icon(Icons.search, size: 22),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
    
        // Estilo del hint
        hintStyle: TextStyle(
          color: Colors.grey.shade500,
          fontSize: 15,
        ),
      ),
    );
  }
}