import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proyecto_veterinaria/services/firebase_services.dart';
import 'package:proyecto_veterinaria/views/login.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';

  TextEditingController nameController = TextEditingController(text:"");
  TextEditingController passwordController = TextEditingController(text:"");
  TextEditingController lastNameController = TextEditingController(text:"");
  TextEditingController userController = TextEditingController(text:"");
  String txt = "";
  

class crear_cuenta extends StatelessWidget {
 crear_cuenta({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Image.asset("assets/si.png"),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Image.asset('assets/home.png', height: 40, width: 100),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const mainMenu()));
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  //Titulo crear cuenta
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "CREA TU CUENTA",
                    style: TextStyle(
                        fontFamily: 'GrenzeRegular',
                        fontSize: 45,
                        color: Color.fromARGB(255, 20, 108, 148)),
                  ),
                  //subtitulo
                  const Text(
                    "y accede a los beneficios que tenemos",
                    style: TextStyle(
                        fontFamily: 'GrenzeRegular',
                        fontSize: 25,
                        color: Color.fromARGB(255, 58, 183, 237)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //fila de textfield, nombre y apellido
                  fila_nombre_apellido(),
                  const SizedBox(
                    height: 30,
                  ),
                  //Columna con los textfield correo y contraseña
                  columna_textfield_correo_contrasena(),
                  const SizedBox(
                    height: 30,
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
                        backgroundColor:
                            const Color.fromARGB(255, 25, 167, 206),
                      ),
                      onPressed: () async {
                        txt = addPeople(nameController.text,lastNameController.text,
                             passwordController.text, userController.text).toString();
                      },
                      child: const Text(
                        "Crear cuenta",
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
                        "¿Ya tienes una cuenta?",
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
                          "Inicie sesión",
                          style: TextStyle(
                              fontFamily: 'GrenzeItalic',
                              fontSize: 18,
                              color: Color.fromARGB(255, 25, 167, 206)),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget fila_nombre_apellido() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const SizedBox(
        width: 1,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 217, 217, 217),
        ),
        height: 48.50,
        width: 200.73,
        child: TextFormField(
          controller: nameController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Nombre',
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
        width: 30,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 217, 217, 217),
        ),
        height: 48.50,
        width: 200.73,
        child: TextFormField(
          controller: lastNameController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Apellido',
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
      SizedBox(
        height: 10,
      ),
      Text(txt,
      style: TextStyle(fontFamily: 'GrenzeRegular', fontSize: 20, color: Colors.black),
      )
    ],
  );
}

Widget columna_textfield_correo_contrasena() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 217, 217, 217),
        ),
        height: 48.15,
        width: 430.73,
        child: TextFormField(
          controller: userController,
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
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 217, 217, 217),
        ),
        height: 48.15,
        width: 430.73,
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
      ),
    ],
  );
}
