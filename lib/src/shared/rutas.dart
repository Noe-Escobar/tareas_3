import 'package:tarea_3/src/shared/constantes.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';

final rutas = {
  Rutas.login.name: (context) =>  LoginPage(),
  Rutas.inicio.name: (context) => const HomePages(),
};
