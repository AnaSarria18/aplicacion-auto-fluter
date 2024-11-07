import 'package:flutter/material.dart';

class Vehiculo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del Vehiculo'),
        backgroundColor: Color.fromARGB(255, 255, 127, 127),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://png.pngtree.com/png-vector/20190403/ourmid/pngtree-red-vector-element-of-automobile-png-image_913757.jpg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Marca: Toyota",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Modelo: Corolla",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Año: 2022",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Disponibilidad: Disponible",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),

          Spacer(), // Empuja el botón hacia abajo
          Padding(
            padding: EdgeInsets.only(
                bottom: 20.0), // Espacio para separar del borde inferior
            child: Center(
              child: Container(
                width: 200.0, // Define el ancho del botón
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 250, 134, 140),
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                  ),
                  icon: Icon(Icons.directions_car,
                      color: Colors.black), // Ícono del botón
                  label: Text("Alquilar vehículo",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
