import 'package:ejercicio_foco/Practica2309/ejemploFuture.dart';
//import 'package:ejercicio_foco/src/screen/contactos_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
      return MaterialApp(
      home: EjemploFuture(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer ejercicio'),
      ),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 1;
  Color? pintar = Colors.amber;
  String mensaje = "Valor del contador";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensaje, style: const TextStyle(fontSize: 35, color: Colors.blue),),
            Text(cont.toString(), style: const TextStyle(fontSize: 50, color: Colors.red),),
              Icon(
              Icons.lightbulb,
              color: pintar,
              size: 50,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cont++;

            if (cont % 2 ==0 ){ 
            pintar = const Color.fromARGB(255, 178, 179, 178);
            }else{
              pintar = Colors.amber;
            }
            if(cont >= 10){
              pintar = Colors.black;
              mensaje = "El foco se fundió";
            }
          });
        },
        child: const Icon(Icons.add_circle),
        ),
    );
  }
}