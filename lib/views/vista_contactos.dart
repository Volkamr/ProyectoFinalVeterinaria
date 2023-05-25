import 'package:flutter/material.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/vista_perfil.dart';
import 'package:proyecto_veterinaria/views/vista_personal.dart';
import 'package:proyecto_veterinaria/views/vista_servicios.dart';

// ignore: camel_case_types
class contactos extends StatefulWidget {
  const contactos({super.key});

  @override
  State<contactos> createState() => _contactosState();
}

// ignore: camel_case_types
class _contactosState extends State<contactos> {
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
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => servicios())), //Debe navegar a la ventana de servicios
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
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              contactos())) //Debe navegar a la ventana de contactos
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
          Row(
            children: [
              Container(
                color: const Color.fromARGB(255, 175, 211, 226),
                width: 647,
                height: 555,
                //margin: EdgeInsets.only(right: 720),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(20)),
                    const Text(
                      "CONTÁCTANOS",
                      style: TextStyle(
                          fontFamily: 'GrenzeRegular',
                          fontSize: 40,
                          color: Color.fromARGB(255, 20, 108, 148)),
                    ),
                    const Padding(padding: EdgeInsets.all(15)),
                    Container(
                      width: 411.73,
                      height: 48.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 246, 241, 241),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(7),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21)),
                            hintText: "Nombre y Apellido",
                            hintStyle: const TextStyle(
                              fontFamily: 'GrenzeRegular',
                              fontSize: 25,
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: 411.73,
                      height: 48.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 246, 241, 241),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(7),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21)),
                            hintText: "Correo Electronico",
                            hintStyle: const TextStyle(
                              fontFamily: 'GrenzeRegular',
                              fontSize: 25,
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: 411.73,
                      height: 48.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 246, 241, 241),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(7),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21)),
                            hintText: "Asunto",
                            hintStyle: const TextStyle(
                              fontFamily: 'GrenzeRegular',
                              fontSize: 25,
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: 412,
                      height: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 246, 241, 241),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 50, bottom: 50),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21)),
                            hintText: "Mensaje",
                            hintStyle: const TextStyle(
                              fontFamily: 'GrenzeRegular',
                              fontSize: 25,
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(20)),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Enviar",
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
                color: const Color.fromARGB(255, 255, 255, 255),
                width: 715,
                height: 555,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(20)),
                    Container(
                      width: 477,
                      height: 164,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Colors.black,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/mapa.png",
                          width: 451, height: 140),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(
                                    top: 65, left: 90, bottom: 30, right: 90)),
                            Image.asset("assets/face.png",
                                width: 56, height: 57),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Text(
                              "Veterinaria Facebook",
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 24),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(
                                    top: 50, left: 90, bottom: 30, right: 90)),
                            Image.asset("assets/insta.png",
                                width: 56, height: 57),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Text(
                              "@veterinaria_ig",
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 24),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(
                                    top: 50, left: 90, bottom: 30, right: 90)),
                            Image.asset("assets/ws.png", width: 56, height: 57),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Text(
                              "+57 3007347529",
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 24),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(
                                    top: 50, left: 90, bottom: 30, right: 90)),
                            Image.asset("assets/mail.png",
                                width: 56, height: 57),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Text(
                              "veterinaria@gmail.com",
                              style:
                                  TextStyle(fontFamily: 'Inter', fontSize: 24),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
