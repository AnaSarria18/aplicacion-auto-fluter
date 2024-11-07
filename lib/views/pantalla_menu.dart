import 'package:flutter/material.dart';

void main() {
  runApp(AlquilerVehiculosApp());
}

class AlquilerVehiculosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlquilerVehiculosScreen(),
    );
  }
}

class AlquilerVehiculosScreen extends StatelessWidget {
  final List<Map<String, String>> vehiculos = [
    {
      'nombre': 'Toyota Corolla',
      'anio': '2022',
      'precio': '\$99.99/día',
    },
    {
      'nombre': 'Nissan Sentra',
      'anio': '2021',
      'precio': '\$89.99/día',
    },
    {
      'nombre': 'Ford Mustang',
      'anio': '2023',
      'precio': '\$199.99/día',
    },
    {
      'nombre': 'Chevrolet Camaro',
      'anio': '2020',
      'precio': '\$150.00/día',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alquiler de Vehículos'),
        backgroundColor: Color.fromARGB(255, 255, 127, 127),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar vehículo',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: vehiculos.length,
                itemBuilder: (context, index) {
                  final vehiculo = vehiculos[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(Icons.directions_car,
                          color: const Color.fromARGB(255, 211, 51, 40)),
                      title: Text(vehiculo['nombre']!),
                      subtitle: Text(
                          'Año: ${vehiculo['anio']} - ${vehiculo['precio']}'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 255, 127, 118)),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car, color: Colors.grey),
            label: 'Alquiler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Usuario',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 255, 144, 144),
      ),
    );
  }
}















































































































