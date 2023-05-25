import 'package:flutter/material.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/reservas.dart';
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
                  SizedBox(
                    width: 42,
                    height: 42,
                  )
              ],
              ),
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(            //Bloque completo
                    width: 357,
                    height: 152,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10)
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.grey[850]!.withOpacity(0.29),
                        offset: const Offset(-8, 8),
                        blurRadius: 10
                      )]
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const reservas())),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(             //Bloque de Imagen
                          width: 357,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/gatito_1.png'),
                              fit: BoxFit.cover
                            )
                          )
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
                    )
                  ),
                  Container(          //Bloque Completo
                    height: 152,
                    width: 357,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10)
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.grey[850]!.withOpacity(0.29),
                        offset: const Offset(-8, 8),
                        blurRadius: 10
                      )]
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const reservas())),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(             //Bloque de imagen 
                          width: 357,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/oficina.jpg'),
                              fit: BoxFit.cover
                            )
                          )
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
                  )
                ),
                Container(              //Bloque completo
                  height: 152,
                  width: 357,
                  decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10)
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.grey[850]!.withOpacity(0.29),
                        offset: const Offset(-8, 8),
                        blurRadius: 10
                      )]
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const reservas())),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(             //Bloque de imagen
                          width: 357,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/oficina_2.jpg'),
                              fit: BoxFit.cover
                            )
                          )
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
                )
                ],
              ),
               Row(        //Segunda fila
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(    //Bloque de separacion
                    width: 47,
                    height: 80,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(        //Bloque completo
                    width: 357,
                    height: 152,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10)
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.grey[850]!.withOpacity(0.29),
                        offset: const Offset(-8, 8),
                        blurRadius: 10
                      )]
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const reservas())),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(           //Bloque de imagen
                          width: 357,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cirugia.jpg'),
                              fit: BoxFit.cover
                            )
                          )
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
                    )
                  ),
                  Container(        //Bloque completo
                    width: 357,
                    height: 152,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10)
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.grey[850]!.withOpacity(0.29),
                        offset: const Offset(-8, 8),
                        blurRadius: 10
                      )]
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const reservas())),
                    child: Column(
                      children: [
                        Container(         //Bloque de imagen
                          width: 357,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cuidados_intensivos.jpg'),
                              fit: BoxFit.cover
                            )
                          )
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
                    )
                  ),
                  Container(        //Bloque completo
                    width: 357,
                    height: 152,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10)
                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.grey[850]!.withOpacity(0.29),
                        offset: const Offset(-8, 8),
                        blurRadius: 10
                      )]
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const reservas())),
                    child: Column(
                      children: [
                        Container(         //Bloque de imagen
                          width: 357,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/medicina_preventiva.jpg'),
                              fit: BoxFit.cover
                            )
                          )
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