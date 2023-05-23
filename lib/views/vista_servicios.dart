import 'package:flutter/material.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/vista_contactos.dart';
import 'package:proyecto_veterinaria/views/vista_perfil.dart';
import 'package:proyecto_veterinaria/views/vista_personal.dart';


// ignore: camel_case_types
class servicios extends StatelessWidget {
  const servicios({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    color: Color.fromARGB(255, 20, 108, 148)
                  ),
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  const mainMenu()) ),
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
                    color: Color.fromARGB(255, 20, 108, 148)
                  ),
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const personal()))
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
                    color: Color.fromARGB(255, 20, 108, 148)
                  ),
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const servicios()),
                )
              ),
              const SizedBox(
                width: 70,
              ),
              GestureDetector(
                child: const Text(
                  "Contactanos",
                  style: TextStyle(
                    fontFamily: 'GrenzeRegular',
                    fontSize: 30,
                    color: Color.fromARGB(255, 20, 108, 148)
                  ),
                ),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const contactos())),
              ),
              const SizedBox(
                width: 70,
              ),
              GestureDetector(
                child: Image.asset("assets/7.png", height: 53,),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const perfil())),
              ),
              const SizedBox(
                width: 100,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
           color: const Color.fromARGB(246, 241, 241, 255), 
           height: 555,
           child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: const Color.fromARGB(246, 241, 241, 255),
                    width: 42,
                    height: 42,
                  )
              ],
              ),
              
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.white,
                    width: 357,
                    height: 152,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 357,
                          height: 110,
                          child: Image.asset('assets/gatito_1.png'),
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        const Text(
                          'Servicio de Hospitalizacion',
                          style: TextStyle(
                            color: Color.fromARGB(255, 25, 167, 206),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 23
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 152,
                    width: 357,
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 357,
                          height: 110,
                          child: Image.asset("assets/oficina.jpg"),
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        const Text(
                          'Urgencia 24 horas',
                          style: TextStyle(
                            color: Color.fromARGB(255, 25, 167, 206),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 23
                          ),
                        ),
                      ],
                    ),
                ),
                Container(
                  color: Colors.white,
                  height: 152,
                  width: 357,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 357,
                          height: 110,
                          child: Image.asset("assets/oficina_2.jpg"),
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        const Text(
                          'Consulta General',
                          style: TextStyle(
                            color: Color.fromARGB(255, 25, 167, 206),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 23
                          ),
                        ),
                      ],
                    ),
                )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: const Color.fromARGB(246, 241, 241, 255),
                    width: 47,
                    height: 80,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.white,
                    width: 357,
                    height: 152,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 357,
                          height: 110,
                          child: Image.asset("assets/cirugia.jpg"),
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        const Text(
                            "Cirugias",
                            style: TextStyle(
                            color: Color.fromARGB(255, 25, 167, 206),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 23
                            ),
                          )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 357,
                    height: 152,
                    child: Column(
                      children: [
                        Container(
                          width: 357,
                          height: 110,
                          child: Image.asset("assets/cuidados_intensivos.jpg"),

                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        const Text(
                            "Unidad de Cuidados Intensivos",
                            style: TextStyle(
                            color: Color.fromARGB(255, 25, 167, 206),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 23
                            ),
                          )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 357,
                    height: 152,
                    child: Column(
                      children: [
                        Container(
                          width: 357,
                          height: 110,
                          child: Image.asset("assets/medicina_preventiva.jpg"),
                          
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        const Text(
                            "Medicina Preventiva",
                            style: TextStyle(
                            color: Color.fromARGB(255, 25, 167, 206),
                            fontFamily: 'GrenzeRegular',
                            fontSize: 23
                            ),
                          )
                      ],
                    ),
                  )
                ],
              )
            ],
           ),
          )
        ],
      ),
    );
  }
}