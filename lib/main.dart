import 'package:flutter/material.dart';
import 'package:tarea_3/src/shared/constantes.dart';
import 'package:tarea_3/src/shared/not_found.dart';
import 'package:tarea_3/src/shared/rutas.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true,
      appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 184, 191, 195))),
      title: 'Tarea',
      initialRoute: Rutas.login.name,
      routes: rutas,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return const NotFound();
        });
      },
    );
  }
}
