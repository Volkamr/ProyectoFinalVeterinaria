import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class mainMenu extends StatelessWidget {
  const mainMenu({super.key});

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
                  "Nosotros",
                  style: TextStyle(
                      fontFamily: 'GrenzeRegular',
                      fontSize: 30,
                      color: Color.fromARGB(255, 20, 108, 148)),
                ),
                onTap: () => null, //Debe navegar a la ventana de personal
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
                onTap: () => null, //Debe navegar a la ventana de servicios
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
                onTap: () => null, //Debe navegar a la ventana de contactos
              ),
              const SizedBox(
                width: 70,
              ),
              GestureDetector(
                child: Image.asset("assets/7.png", height: 53),
                onTap: () => null, //Debe navegar a la ventana de perfil
              ),
              const SizedBox(
                width: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            color: Color.fromARGB(255, 163, 228, 255),
            height: 530,
            child: Row(
              children: [
                Container(
                  width: 400,
                  height: 530,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: -120,
                        child: Image.asset('assets/6.png', height: 400),
                      ),
                      Positioned(
                        top:  170,
                        left: 80,
                        child: Image.asset('assets/1.png', height: 410),
                      ),
                      Positioned(
                        top:  230,
                        left: -30,
                        child: Image.asset('assets/2.png', height: 304),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 566,
                  height: 530,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text(
                        "Bienvenido a la veterinaria Friendly Pets",
                        style: TextStyle(
                          fontFamily: 'GrenzeBold',
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        "Este es un espacio seguro y de confianza para sus\n" + 
                        "mascotas,  ofrecemos variados servicios y contamos\n" +
                        "con excelentes profesionales especializados",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'GrenzeBold',
                          fontSize: 25,
                          color: Color.fromARGB(255, 20, 108, 148),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      ElevatedButton(onPressed: () {}, 
                      /*Si está logueado debe redirigir a la pantalla de
                      reserver, si no, debe redirigir a login
                      */
                      child: const Text(
                        "¡Agenda tu cita!",
                          style: TextStyle(
                            fontFamily: 'GrenzeBold',
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),  
                    ],
                  ),
                ),
                Container(
                  height: 530,
                  width:400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 60,
                        left: 170,
                        child: Image.asset('assets/4.png', height: 328),
                      ),
                      Positioned(
                        top: 70,
                        left: -15,
                        child: Image.asset('assets/5.png', height: 457),
                      ),
                      Positioned(
                        top: 260,
                        left: -10,
                        child: Image.asset('assets/3.png', height: 290),
                      ),

                    ],
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}