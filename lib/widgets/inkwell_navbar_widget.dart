import 'package:flutter/material.dart';

class InkwellNavBarWidget extends StatelessWidget {

  final IconData icon;
  final String texto;
  
  const InkwellNavBarWidget({
    super.key,
    required this.icon,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(texto),
        ],
      ),
    );
  }
}