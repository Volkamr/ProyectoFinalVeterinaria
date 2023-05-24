import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proyecto_veterinaria/views/login.dart';
import 'package:proyecto_veterinaria/views/main_menu.dart';
import 'package:proyecto_veterinaria/views/vista_contactos.dart';
import 'package:proyecto_veterinaria/views/vista_perfil.dart';
import 'package:proyecto_veterinaria/views/vista_personal.dart';
import 'package:proyecto_veterinaria/views/vista_servicios.dart';

class reservas extends StatelessWidget {
  const reservas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 30,
                ),
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
                                const mainMenu())) //Debe navegar a la v
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
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => servicios()),
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
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              perfil())), //Debe navegar a la ventana de perfil
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Color.fromARGB(255, 163, 228, 255),
              height: 502,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Haz tu reserva en linea!\n Nuestro equipo confirmará tu cita\n lo mas pronto posible",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'GrenzeBold',
                          fontSize: 35,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                      Container(
                        child: Image.asset("assets/gatos-reservas.png"),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      fila_nombre_apellido_reservas(),
                      const SizedBox(
                        height: 20,
                      ),
                      columna_cor_cel_masc(),
                      const SizedBox(
                        height: 20,
                      ),
                      fila_fec_motivo_sede(),
                      const SizedBox(
                        height: 40,
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
                          onPressed: () {},
                          child: const Text(
                            "Reservar cita",
                            style: TextStyle(
                              fontFamily: 'GrenzeRegular',
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget fila_nombre_apellido_reservas() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const SizedBox(
        width: 1,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.50,
        width: 200.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Nombre',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          style: const TextStyle(
              fontFamily: 'GrenzeRegular',
              color: Color.fromARGB(121, 0, 0, 0),
              fontSize: 25),
        ),
      ),
      const SizedBox(
        width: 90,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.50,
        width: 200.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Apellido',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
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

Widget columna_cor_cel_masc() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.15,
        width: 490.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Correo electrónico',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          style: const TextStyle(
              fontFamily: 'GrenzeRegular',
              color: Color.fromARGB(122, 30, 30, 30),
              fontSize: 25),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.15,
        width: 490.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'número de teléfono',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          style: const TextStyle(
              fontFamily: 'GrenzeRegular',
              color: Color.fromARGB(122, 30, 30, 30),
              fontSize: 25),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.15,
        width: 490.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Selec. Mascota personalizada',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
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

Widget fila_fec_motivo_sede() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.50,
        width: 150.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Fecha',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          style: const TextStyle(
              fontFamily: 'GrenzeRegular',
              color: Color.fromARGB(121, 0, 0, 0),
              fontSize: 25),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.50,
        width: 150.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Motivo de cita',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          style: const TextStyle(
              fontFamily: 'GrenzeRegular',
              color: Color.fromARGB(122, 30, 30, 30),
              fontSize: 25),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 48.50,
        width: 150.73,
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Sede',
            hintStyle: TextStyle(
              fontFamily: 'GrenzeRegular',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
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
