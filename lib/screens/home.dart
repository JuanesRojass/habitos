import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habitos/model/list_habits.dart';
import 'package:habitos/widgets/habit_card_widget.dart';
import 'package:habitos/widgets/inkwell_navbar_widget.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('MyHabits'),
          actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.filter_alt_rounded))
          ],
        ),
        body: ListView.builder(
          itemCount: habitos.length,
          itemBuilder: (context, index) {
            return habitCard(
              icon: habitos[index].icon, 
              nombre: habitos[index].nombre,
              descripcion: habitos[index].descripcion ?? '',
              horaInicio: "00:08",
              horaFin: "00:09");
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          context.push('/add');
        },
          elevation: 4,
          child: Icon(Icons.add_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 72,
          child: Row(
            children: [
              // ---- Ítem izquierdo ----
              Expanded(child: InkwellNavBarWidget(icon: Icons.list_alt_rounded,texto: "Habits"),
              ),

              // ---- Espacio para el FAB ----
              SizedBox(width: 50),

              // ---- Ítem derecho ----
              Expanded(child: InkwellNavBarWidget(icon: Icons.person_2_rounded,texto: "Progress")
              ),
            ],
          ),
        ),
      ),
    );
  }
}

