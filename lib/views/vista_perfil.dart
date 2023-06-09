import 'package:flutter/material.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/vista_citas.dart';
import 'package:proyecto_veterinaria/views/vista_historial.dart';
import 'package:proyecto_veterinaria/views/vista_mascotas.dart';

// ignore: camel_case_types
class perfil extends StatelessWidget {
  const perfil({super.key});
  
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
           const Padding(padding: EdgeInsets.all(0)),
          Container(
            color: Colors.white,
            width: 995,
            height: 657,
            child:  Column(
              children: [
                const SizedBox(
                  width: 504,
                  height: 89,
                  child: Text(
                    'Informacion Personal',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'GrenzeRegular',
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(      //Separacion
                  width: 30,
                  height: 95,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(      //Texto - Nombre
                      'Nombre:',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(    //Separacion
                      width: 15,
                      height: 15,
                    ),
                    Container(   //TextField - Nombre
                      width: 292,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 143, 202, 226),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      )
                    ),
                    const SizedBox(    //Separacion
                      width: 62,
                      height: 62,
                    ),
                    const Text(   //Texto - Telefono
                      'Telefono:',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(    //Separacion
                      width: 18,
                      height: 18,
                    ),
                    Container(    //TextField - Telefono
                      width: 180,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 143, 202, 226),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(    //Separacion Vertical
                    width: 60,
                    height: 60,
                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(      //Texto - Apellidos
                      'Apellidos:',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(      //Separacion
                      width: 15,
                      height: 15,
                    ),
                    Container(    //TextField - Apellidos
                      width: 292, 
                      height: 35,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 143, 202, 226),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      )
                    ),
                    const SizedBox(   //Separacion
                      width: 59,
                      height: 59,
                    ),
                    const Text(  //Texto - Sexo
                      'Sexo:',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(    //Separacion
                      width: 18,
                      height: 18,
                    ),
                    Container(        //TextField - Sexo
                      width: 180,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 143, 202, 226),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      )
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(    //Separacion vertical
                      width: 60,
                      height: 60,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(    //Texto - Correo Electronico
                      'Correo Electronico:',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'GrenzeRegular',
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(    //Separacion
                      width: 18,
                      height: 18,
                    ),
                    Container(    //TextField - Correo
                      width: 292,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color.fromARGB(255, 143, 202, 226),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      )
                    ),
                  ],
                )
              ],
            )
          )
        ],
      ),
    );
  }

}