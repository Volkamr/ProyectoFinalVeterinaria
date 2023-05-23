import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/vista_contactos.dart';
import 'package:proyecto_veterinaria/views/vista_perfil.dart';
import 'package:proyecto_veterinaria/views/vista_servicios.dart';

class personal extends StatelessWidget {
  const personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  child: const Text(
                    "Menu Principal",
                    style: TextStyle(
                        fontFamily: 'GrenzeRegular',
                        fontSize: 30,
                        color: Color.fromARGB(255, 20, 108, 148)),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              mainMenu())) //Debe navegar a la v
                  ),
              const SizedBox(
                width: 400,
              ),
              GestureDetector(
                  child: const Text(
                    "Nosotros",
                    style: TextStyle(
                        fontFamily: 'GrenzeRegular',
                        fontSize: 30,
                        color: Color.fromARGB(255, 20, 108, 148)),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              personal())) //Debe navegar a la v
                  ),
              const SizedBox(
                width: 70,
              ),
              GestureDetector(
                child: const Text(
                  "Servicios",
                  style: TextStyle(
                      fontFamily: 'GrenzeRegular',
                      fontSize: 30,
                      color: Color.fromARGB(255, 20, 108, 148)),
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => servicios()),
                 ) //Debe navegar a la ventana de servicios
              ),
              const SizedBox(
                width: 70,
              ),
              GestureDetector(
                child: const Text(
                  "Contáctanos",
                  style: TextStyle(
                      fontFamily: 'GrenzeRegular',
                      fontSize: 30,
                      color: Color.fromARGB(255, 20, 108, 148)),
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => contactos())) //Debe navegar a la ventana de contactos
              ),
              const SizedBox(
                width: 70,
              ),
              GestureDetector(
                child: Image.asset("assets/7.png", height: 53),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => perfil())), //Debe navegar a la ventana de perfil
              ),
              const SizedBox(
                width: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Color.fromARGB(246, 241, 241, 255),
            height: 555,
            child: Row(
              children: [
                Container(
                  width: 60,
                ),
                Container(
                  width: 375,
                  height: 399,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: 375,
                        padding: EdgeInsets.all(0),
                        child: Image.asset("assets/Doc1.png"),
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      Text("Dra. Karla Rodriguez",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 20, 108, 148),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 25,
                          )),
                      Padding(padding: EdgeInsets.all(7)),
                      Text(
                          "Especialista en fisioterapia y rehabilitación de animales despues \n" +
                              " de procesos como cirugías o de algun traumatismo que  hayan \n" +
                              "recibido . Con mas de 7 años de experiencia ten por seguro que tu \n" +
                              "mascota esta en buenas manos ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GrenzeRegular',
                            fontSize: 14,
                          )),
                      Padding(padding: EdgeInsets.all(0)),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                ),
                Container(
                  width: 375,
                  height: 399,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: 375,
                        padding: EdgeInsets.all(0),
                        child: Image.asset("assets/Doc2.png"),
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      Text("Dra. Marta Gonzales",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 20, 108, 148),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 25,
                          )),
                      Padding(padding: EdgeInsets.all(7)),
                      Text("Especialista en Cirugia y atención de problemas internos en \n" + " animales. Posee 8 años de experiencia en el ámbito de cuidar a \n" + "tu mascota y está siempre lista para brindarle la mejor salud a  \n" + "tu mascota",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GrenzeRegular',
                            fontSize: 14,
                          )),
                      Padding(padding: EdgeInsets.all(0)),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                ),
                Container(
                  width: 375,
                  height: 399,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: 375,
                        padding: EdgeInsets.all(0),
                        child: Image.asset("assets/Doc3.png"),
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      Text("Dr. Hector Maturara",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 20, 108, 148),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 25,
                          )),
                      Padding(padding: EdgeInsets.all(7)),
                      Text("Especialista en Onocología y Fauna silvestre. Su amor por los \n" + " animales lo ha llevado a querer ayudarlos sin importar que sean. \n" + " el siempre dará lo mejor de si. Posee 10 años de experiencia y \n" + " espera que sean muchos mas ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GrenzeRegular',
                            fontSize: 14,
                          )),
                      Padding(padding: EdgeInsets.all(0)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
