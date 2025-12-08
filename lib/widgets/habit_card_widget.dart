import 'package:flutter/material.dart';

Widget habitCard({
  required IconData icon,
  required String nombre,
  required String descripcion,
  required String horaInicio,
  required String horaFin,
}) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      // ---------- TARJETA PRINCIPAL ----------
      Container(
        margin: EdgeInsets.only(top: 20, bottom: 20), // deja espacio para la pestaña
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          children: [
            // ---------- ICONO ----------
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: Icon(icon, size: 30),
            ),

            SizedBox(width: 16),

            // ---------- TEXTO ----------
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nombre, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(descripcion, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ),

            SizedBox(width: 16),

            // ---------- BOTONES ----------
            Column(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // ---------- PESTAÑA SUPERIOR ----------
      Positioned(
        top: 0,
        left: 100,
        right: 100,
        child: Container(

          padding: EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                spreadRadius: 1,
                offset: Offset(0, 3)
              )
            ]
          ),
          alignment: Alignment.center,
          child: Text(
            "$horaInicio  -  $horaFin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}
