import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proyecto_veterinaria/views/cambiar_contrasena.dart';
import 'package:proyecto_veterinaria/views/crear_cuenta.dart';
import 'package:proyecto_veterinaria/views/vista_perfil.dart';
import 'main_menu.dart';
import 'package:proyecto_veterinaria/services/firebase_services.dart';
import 'package:proyecto_veterinaria/views/login.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';

TextEditingController correoNameController = TextEditingController(text: "");
TextEditingController passwordController = TextEditingController(text: "");
String txt = "";

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Image.asset('assets/8.jpg', height: 650),
        //const SizedBox(width: 80),
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const mainMenu()));
                    },
                    child:
                        Image.asset('assets/home.png', height: 40, width: 100),
                  ),
                )
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "INICIAR SESIÓN",
              style: TextStyle(
                  fontFamily: 'GrenzeRegular',
                  fontSize: 45,
                  color: Color.fromARGB(255, 20, 108, 148)),
            ),
            const SizedBox(height: 60),
            correo_nombreUsuario(),
            const SizedBox(height: 50),
            password(),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: const Text(
                "Cambiar contraseña",
                style: TextStyle(
                    fontFamily: 'GrenzeItalic',
                    fontSize: 20,
                    color: Color.fromARGB(122, 30, 30, 30)),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const cambiar_contrasena()));
              }, //Debe navegar a la ventana de reestablecer contraseña
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 53,
              width: 252,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 25, 167, 206),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 25, 167, 206),
                ),
                onPressed: () {
                  fount() async {
                    var colletion =
                        FirebaseFirestore.instance.collection("usuarios");
                    int _count = 0;
                    var correo = await colletion
                        .where("user", isEqualTo: correoNameController.text)
                        .where("password", isEqualTo: passwordController.text)
                        .get();
                    var name = await colletion
                        .where("nombre", isEqualTo: correoNameController.text)
                        .where("password", isEqualTo: passwordController.text)
                        .get();
                    _count = correo.size + name.size;
                    if (_count == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const perfil()));
                      _count = 0;

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Bienvenid@ a Friendly Pets'),
                            );
                          });

                      correoNameController.clear();
                      passwordController.clear();
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Usuario o Contraseña Incorrecta'),
                            );
                          });
                    }
                  }

                  fount();
                },
                child: const Text(
                  "Ingresar",
                  style: TextStyle(
                    fontFamily: 'GrenzeRegular',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 53,
              width: 252,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 217, 217),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => crear_cuenta()));
                },
                child: const Text(
                  "Crear cuenta",
                  style: TextStyle(
                    fontFamily: 'GrenzeRegular',
                    fontSize: 25,
                    color: Color.fromARGB(122, 30, 30, 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

Widget correo_nombreUsuario() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color.fromARGB(255, 217, 217, 217),
    ),
    height: 48.15,
    width: 411.73,
    child: TextFormField(
      controller: correoNameController,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'Correo o nombre de usuario',
        hintStyle: TextStyle(
          fontFamily: 'GrenzeRegular',
          fontSize: 25,
          color: Color.fromARGB(122, 30, 30, 30),
        ),
      ),
      style: const TextStyle(
          fontFamily: 'GrenzeRegular',
          color: Color.fromARGB(122, 30, 30, 30),
          fontSize: 25),
    ),
  );
}

Widget password() {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color.fromARGB(255, 217, 217, 217),
    ),
    height: 48.15,
    width: 411.73,
    child: TextFormField(
      controller: passwordController,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'Contraseña',
        hintStyle: TextStyle(
          fontFamily: 'GrenzeRegular',
          fontSize: 25,
          color: Color.fromARGB(122, 30, 30, 30),
        ),
      ),
      style: const TextStyle(
          fontFamily: 'GrenzeRegular',
          color: Color.fromARGB(122, 30, 30, 30),
          fontSize: 25),
    ),
  );
}
