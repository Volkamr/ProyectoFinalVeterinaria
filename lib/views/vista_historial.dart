import 'package:flutter/material.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/vista_citas.dart';
import 'package:proyecto_veterinaria/views/vista_mascotas.dart';
import 'package:proyecto_veterinaria/views/vista_perfil.dart';

class Historial extends StatelessWidget{
  const Historial({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
         Container(
            color: const Color.fromARGB(255,176,232,255),
            width: 370,
            height: 657,
            child: Column(
              children: [
                const SizedBox(
                  width: 47,
                  height: 12,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 33,
                      height: 18,
                    ),
                    GestureDetector(
                      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const mainMenu())),
                    child: Container(    //Imagen
                  width: 28,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255,176,232,255),
                    image: DecorationImage(image: AssetImage('assets/casita.png'),
                    fit: BoxFit.cover
                    ),
                  ),
                ),
                ),
                const SizedBox(
                  width: 10,
                  height: 18,
                ),
                GestureDetector(
                  onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const mainMenu())),       
                  child: const Text(     //Texto
                    'Home',
                    style: TextStyle(
                    fontFamily: 'GrenzeRegular',
                    fontSize: 30,
                    color: Colors.black
                    ),
                )
                )
                  ],
                ),
                const SizedBox(     //Separacion
                  height: 20,
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(         //Texto
                      'Perfil',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 30
                      ),      
                    ),
                    SizedBox(      //Imagen
                      width: 162,
                      height: 162,
                      child: Image.asset('assets/icon.jpg')
                    ),
                    const SizedBox(    //Separacion
                      width: 20,
                      height: 20,
                    ),
                    GestureDetector(
                      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const perfil())), 
                  child: const Text(         //Texto
                      'Informacion Personal',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 30
                      ),      
                    ),
                    ),
                    const SizedBox(    //Separacion
                      height: 9,
                      width: 9,
                    ),
                    Container(    //Linea
                      width: 257,
                      height: 2,
                      color: const Color.fromARGB(255, 20, 108, 148),
                    ),
                    const SizedBox(      //Separacion
                      height: 9,
                      width: 9,
                    ),
                    GestureDetector(
                      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Mascotas())), //Debe navegar a mis mascotas
                    child: const Text(         //Texto
                      'Mis Mascotas',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 30
                      ),      
                    ),
                  ),
                    const SizedBox(      //Separacion
                      width: 9,
                      height: 9,
                    ),
                    Container(      //Linea
                      width: 257,
                      height: 2,
                      color: const Color.fromARGB(255, 20, 108, 148),
                    ),
                    const SizedBox(     //Separacion
                      width: 9,
                      height: 9,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Historial())), // Debe navegar a historial
                    child: const Text(         //Texto
                      'Historial de Citas',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 30
                      ),      
                    ),
                  ),
                    const SizedBox(     //Separacion
                      width: 9,
                      height: 9,
                    ),
                    Container(    //Linea
                      width: 257,
                      height: 2,
                      color: const Color.fromARGB(255, 20, 108, 148),
                    ),
                    const SizedBox(    //Separacion
                      width: 9,
                      height: 9,
                    ),
                    GestureDetector(
                      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Citas())), // Debe navegar a citas
                    child: const Text(         //Texto
                      'Citas Activas',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 30
                      ),
                    ),
                  ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: 995,
            height: 657,
            child: Column(
              children: [
                const SizedBox(
                  width: 393,
                  height: 89,
                  child: Text(
                    'Historial Citas',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'GrenzeRegular',
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(    //Separacion
                  width: 40,
                  height: 40,
                ),
                Container(        //Bloque
                  width: 790,
                  height: 145,
                  decoration: const BoxDecoration(
                  color:  Color.fromARGB(255, 211, 242, 255),
                  borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 36,
                            height: 2,
                          ),
                          SizedBox(
                            width: 90,
                            height: 44,
                            child: Text(
                              'Cita#54',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 30,
                              ),
                            )
                            
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 36,
                            height: 2,
                          ),
                          SizedBox(
                            width: 136,
                            height: 30,
                            child: Text(
                              'Fecha:abril 3/2023',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          ),
                           SizedBox(
                            width: 77,
                            height: 2,
                          ),
                          SizedBox(
                            width: 146,
                            height: 30,
                            child: Text(
                              'Servicio:Vacunacion',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          ),
                          SizedBox(
                            width: 53,
                            height: 2,
                          ),
                          SizedBox(
                            width: 257,
                            height: 37,
                            child: Text(
                              'Veterinario: Dra. Marta Gonzáles',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 36,
                            height: 2,
                          ),
                          SizedBox(
                            width: 136,
                            height: 30,
                            child: Text(
                              'Mascota: Candy',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          ),
                          SizedBox(
                            width: 77,
                            height: 2,
                          ),
                          SizedBox(
                            width: 160,
                            height: 30,
                            child: Text(
                              'Diagnostico:Positivo',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          ),
                          SizedBox(
                            width: 40,
                            height: 2,
                          ),
                          SizedBox(
                            width: 142,
                            height: 37,
                            child: Text(
                              'Costo: 50.000',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(    //Separacion
                  width: 40,
                  height: 40,
                ),
                Container(        //Bloque
                  width: 790,
                  height: 145,
                  decoration: const BoxDecoration(
                  color:  Color.fromARGB(255, 211, 242, 255),
                  borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 36,
                            height: 2,
                          ),
                          SizedBox(
                            width: 90,
                            height: 44,
                            child: Text(
                              'Cita#101',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 30,
                              ),
                            )
                            
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 36,
                            height: 2,
                          ),
                          SizedBox(
                            width: 151,
                            height: 30,
                            child: Text(
                              'Fecha:mayo 18/2023',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          ),
                           SizedBox(
                            width: 77,
                            height: 2,
                          ),
                          SizedBox(
                            width: 206,
                            height: 30,
                            child: Text(
                              'Servicio:Peluqueria, revision',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          ),
                          SizedBox(
                            width: 53,
                            height: 2,
                          ),
                          SizedBox(
                            width: 257,
                            height: 37,
                            child: Text(
                              'Veterinario: Dra. Marta Gonzáles',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 36,
                            height: 2,
                          ),
                          SizedBox(
                            width: 136,
                            height: 30,
                            child: Text(
                              'Mascota: Candy',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
                              ),
                            )
                          ),
                          SizedBox(
                            width: 90,
                            height: 2,
                          ),
                          SizedBox(
                            width: 206,
                            height: 50,
                            child: Text(
                              'Diagnostico: debe bañarse 1 vez por semana',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 17,
                              ),
                            )
                          ),
                          SizedBox(
                            width: 53,
                            height: 2,
                          ),
                          SizedBox(
                            width: 147,
                            height: 37,
                            child: Text(
                              'Costo: 50.000',
                              style: TextStyle(
                                fontFamily: 'GrenzeRegular',
                                fontSize: 20,
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
          )
        ],
      )
    );
  }


}