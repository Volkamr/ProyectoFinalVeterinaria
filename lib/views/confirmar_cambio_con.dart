import 'package:flutter/material.dart';
import 'package:proyecto_veterinaria/views/vista_contactos.dart';

import 'main_menu.dart';

class confirmar_cambio_con extends StatelessWidget {
  const confirmar_cambio_con({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/capy-removebg-preview.png"),
                Column(
                  children: [
                    Image.asset("assets/visto-removebg-preview.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Contraseña cambiada con exito",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'GrenzeRegular',
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                  height: 53,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 25, 167, 206),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 25, 167, 206),
                    ),
                    onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const mainMenu()));
                        },
                    child: const Text(
                      "Volver al menú principal",
                      style: TextStyle(
                        fontFamily: 'GrenzeRegular',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/le_cat-removebg-preview.png")
              ],
            ),
          ],
        ));
  }
}
