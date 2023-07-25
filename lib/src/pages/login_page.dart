

import 'package:flutter/material.dart';
import 'package:tarea_3/src/shared/constantes.dart';
import 'package:tarea_3/src/widgets/input_form.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login')),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Image(
              image: AssetImage('assets/imageUser.png'),
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    InputForm(
                        label: 'Ingrese Su Corrreo',
                        icon: Icons.email,
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validator: (value) {
                          if (value != 'noe.dubon@unah.hn') {
                            return 'Ingrese un Email Valido';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    InputForm(
                      label: 'Ingrese Una Contraseña',
                      icon: Icons.password,
                      controller: passwordController,
                      obscureText: true,
                      showbutton: true,
                      validator: (value) {
                        if (value != '20212000091') {
                          return 'Ingrese una Contraseña Valida';
                        }
                        return null;
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ Navigator.pushNamed(context, Rutas.inicio.name);},
      ),
    );
  }

  
}
