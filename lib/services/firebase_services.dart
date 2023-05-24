import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<String> addPeople(String nombre, String apellido, String password, String user) async{
  
  if(nombre !=null && apellido!=null && password!=null && user!=null){
     if(password.length>=7){
        await db.collection('usuarios').add(
      {
      "nombre": nombre,
      "apellido": apellido,
      "password": password,
      "user": user,
      }  
      );
     return "Ha creado su cuenta exitosamente";
     }else{
      return "La contraseña debe contener al menos 7 caracteres";
     }
  }else{
    return "no puede ingresar campos vacíos";
  }

}


