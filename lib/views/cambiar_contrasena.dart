import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proyecto_veterinaria/views/crear_cuenta.dart';
import 'package:proyecto_veterinaria/views/vista_contactos.dart';

import 'main_menu.dart';

class cambiar_contrasena extends StatelessWidget {
  const cambiar_contrasena({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Image.asset(
              'assets/puter.png',
              height: 630,
            ),
            //const SizedBox(width: 80),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Image.asset('assets/home.png',
                          height: 40, width: 100),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const mainMenu()));
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Cambiar contraseña",
                  style: TextStyle(
                      fontFamily: 'GrenzeRegular',
                      fontSize: 45,
                      color: Color.fromARGB(255, 20, 108, 148)),
                ),
                const SizedBox(
                  height: 10
                  ),
                const Text(
                    "Cambiar su contraseña ayuda al momento\n de asegurar su cuenta. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'GrenzeRegular',
                        fontSize: 25,
                        color: Color.fromARGB(255, 58, 183, 237)),
                  ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 217, 217, 217),
                  ),
                  height: 48.15,
                  width: 411.73,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Contraseña actual',
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
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 217, 217, 217),
                  ),
                  height: 48.15,
                  width: 411.73,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Contraseña nueva',
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
                ),
                const SizedBox(
                  height: 10,
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
                    onPressed: () {},
                    child: const Text(
                      "Confirmar cambio",
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
                Row(
                  children: [
                    const Text(
                      "¿Necesita ayuda?",
                      style: TextStyle(
                          fontFamily: 'GrenzeRegular',
                          fontSize: 18,
                          color: Color.fromARGB(122, 30, 30, 30)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const Text(
                        "Contáctenos",
                        style: TextStyle(
                            fontFamily: 'GrenzeItalic',
                            fontSize: 18,
                            color: Color.fromARGB(255, 25, 167, 206)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const contactos()));
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
