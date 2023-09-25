import 'package:ejercicio_foco/src/models/Producto.dart';
import 'package:flutter/material.dart';

class ContactosScreen extends StatelessWidget{
  ContactosScreen({super.key});

  final List<Producto> productos = [
    Producto(foto: 'https://http2.mlstatic.com/D_NQ_NP_2X_763223-MLM31912648436_082019-F.webp', nombre: 'Leche', stock:0),
    Producto(foto: 'https://media.istockphoto.com/id/517109442/es/foto/aislado-con-pedacitos-de-chocolate.jpg?s=1024x1024&w=is&k=20&c=L4JI6p1IA5fYhsWM9wsvnnOnrkPddrWKVe8cjDCBrxE=', nombre: 'Galletas', stock:8),
    Producto(foto: 'https://cdn.politico.mx/uploads/images/2022/03/jabon-zote_62325e27bf56d.jpg', nombre: 'Jabón', stock:0)
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Productos')),
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
          backgroundImage: NetworkImage(productos[index].foto),),
          title: Text('Producto:  ${productos[index].nombre}'),
          subtitle: Text('Cantidad:  ${productos[index].stock.toString()}'),
          tileColor: productos[index].stock == 0  ? Colors.red : Colors.white,
         // tileColor: productos[index].stock == 0  ? Colors.red : Colors.blue,
          //tileColor: Colors.amber,
          trailing: const Icon(Icons.arrow_right),
        );
      },
      ),
    );
  }

  
}