import 'package:flutter/material.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/vista_citas.dart';
import 'package:proyecto_veterinaria/views/vista_historial.dart';
import 'package:proyecto_veterinaria/views/vista_perfil.dart';

class Mascotas extends StatelessWidget{
  const Mascotas({super.key});
  
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
            child:   Column(
              children: [
                const SizedBox(
                  width: 317,
                  height: 89,
                  child: Text(
                    'Mis Mascotas',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'GrenzeRegular',
                      fontWeight: FontWeight.bold,
                      fontSize: 60
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                  height: 98,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 425,
                      height: 205,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(27)
                        ),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: Colors.grey[850]!.withOpacity(0.29),
                          offset: const Offset(-8, 8),
                          blurRadius: 10
                        )]
                      ),
                      child: Row(
                        children: [
                          const SizedBox(    //Separacion
                            width: 14,
                            height: 14,
                          ),
                          Container(    //Imagen
                            width: 141,
                            height: 148,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(73.5)),
                              image: DecorationImage(image: AssetImage('assets/perrito.jpg'),
                              fit: BoxFit.cover)
                            ),
                          ),
                           const SizedBox(    //Separacion
                            width: 50,
                            height: 43,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(     //Texto - Candy
                                'Candy',
                                style: TextStyle(
                                  fontFamily: 'GrenzeRegular',
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(    //Texto - Peso, etc
                            'Peso: 7kg \n edad: 9 años \n Tipo animal:Perro \n Raza: Schanuzer',
                            style:  TextStyle(
                              fontFamily: 'GrenzeRegular',
                              fontSize: 20,
                            ),
                          ),
                            ],
                          ),
                           const SizedBox(
                            width: 34,
                            height: 34,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 143,
                      height: 143,
                    ),
                    Container(
                      width: 195,
                      height: 153,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(27)
                        ),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: Colors.grey[850]!.withOpacity(0.29),
                          offset: const Offset(-8, 8),
                          blurRadius: 10
                        )]
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            width: 131,
                            height: 153,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+',
                                  style: TextStyle(
                                    fontFamily: 'GrenzeRegular',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  'Agregar Mascota',
                                  style: TextStyle(
                                    fontFamily: 'GrenzeRegular',
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            )
                          )
                        ],
                      )
                    )
                  ],
                )
              ],
            ),

          )
        ],
      )

    );
  }



}