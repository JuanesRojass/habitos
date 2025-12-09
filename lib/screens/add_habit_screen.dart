import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:habitos/model/list_icons.dart';
import 'package:habitos/widgets/field_add_custom.dart';

void main() => runApp(const AddHabitScreen());

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {

  TextEditingController controllerNombre = TextEditingController();
  TextEditingController controllerDesc = TextEditingController();

  IconData? selectedIcon;
  //TODO: PARA MAÑANA
  //TODO: tap en la pantalla, bajamos teclado
  //TODO: resolver seleccion automatica en input "Habit Name"
  //TODO: resolver rselección automatica en Navbar
  //TODO: Definir hora de hábito
  //TODO: Desplegar en pantalla los nuevos hábitos con todos los datos
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Add Habit'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
                GestureDetector(
                  onTap: () async {
                    IconData? icon = await pickIcon(context);
                    if (icon != null) {
                      setState(() => selectedIcon = icon);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          selectedIcon ?? Icons.add_circle_outline,
                          size: 30,
                        ),
                        const SizedBox(width: 14),
                        Text(
                          selectedIcon == null
                              ? "Seleccionar ícono"
                              : "Ícono seleccionado",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

          
              FieldAdd(
                controller: controllerNombre,
                hintText: "Habit Name",
              ),
              FieldAdd( 
                controller: controllerDesc,
                hintText: "Habit Description"
                ),
            ],
          ),
        )
    );
  }
}

