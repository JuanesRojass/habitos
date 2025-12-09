import 'package:flutter/material.dart';

final List<IconData> habitIcons = [
  Icons.ac_unit_rounded,
  Icons.water_drop_rounded,
  Icons.book_online_rounded,
  Icons.call_end_rounded,
  Icons.eco_rounded,
];


Future<IconData?> pickIcon(BuildContext context) async {
  return showDialog<IconData>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Selecciona un ícono"),
        content: SizedBox(
          width: 300,
          height: 250,
          child: GridView.builder(
            itemCount: habitIcons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return IconButton(
                icon: Icon(habitIcons[index], size: 32),
                onPressed: () {
                  Navigator.pop(context, habitIcons[index]);
                },
              );
            },
          ),
        ),
      );
    },
  );
}