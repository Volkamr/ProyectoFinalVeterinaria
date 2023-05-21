import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
        children: [
        Positioned(
        top:-20,
        left:-20,
        child: Image.asset('assets/8.jpg', height: 650),
        ),        
        const SizedBox(width: 80),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,         
          children: [
            const Text(
              "INICIAR SESIÓN",
              style: TextStyle(
                  fontFamily: 'GrenzeRegular',
                  fontSize: 45,
                  color: Color.fromARGB(255, 20, 108, 148)),
            ),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 217, 217, 217),
              ),
              height: 48.15,
              width: 411.73,
              child: TextFormField(
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
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 217, 217, 217),
              ),
              height: 48.15,
              width: 411.73,
              child: TextFormField(
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
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                child: const Text(
                  "Olvidé mi contraseña",
                  style: TextStyle(
                      fontFamily: 'GrenzeItalic',
                      fontSize: 20,
                      color: Color.fromARGB(122, 30, 30, 30)),
                ),
                onTap: () => null, //Debe navegar a la ventana de reestablecer contraseña
              ),
              const SizedBox(
              height: 20,
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
                  backgroundColor: const Color.fromARGB(255, 25, 167, 206),
                ),
                onPressed: () {},
                child: const Text(
                  "Ingresar",
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
            Container(
              height: 53,
              width: 252,            
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 217, 217),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                ),
                onPressed: () {},
                child: const Text(
                  "Crear cuenta",
                  style: TextStyle(
                    fontFamily: 'GrenzeRegular',
                    fontSize: 25,
                    color: Color.fromARGB(122, 30, 30, 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
