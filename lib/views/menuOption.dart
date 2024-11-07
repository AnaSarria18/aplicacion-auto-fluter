import 'package:flutter/material.dart';
import 'pantalla_login.dart';
import 'pantalla_registro.dart';
import 'pantalla_menu.dart';
import 'pantalla_perfilU.dart';
import 'pantalla_detalle_vehiculo.dart';
import 'pantalla_pago.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 128, 248),
        title: Text("Menú de Opciones"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfUbm26Sm983c91fAAcytPqTHAqs-ZQidoTw&s",
              height: 180,
              width: 180,
            ),
          ),
          SizedBox(height: 20),
          _buildMenuOption(
              context, "Inicio de Sesión", Icons.login, LoginScreen()),
          _buildMenuOption(
              context, "Registro", Icons.person_add, RegistroScreen()),
          _buildMenuOption(
              context, "Menú Principal", Icons.home, AlquilerVehiculosScreen()),
          _buildMenuOption(
              context, "Perfil de Usuario", Icons.account_circle, PerfilU()),
          _buildMenuOption(context, "Detalle del Vehículo",
              Icons.directions_car, Vehiculo()),
          _buildMenuOption(
              context, "Método de Pago", Icons.paypal, PagoScreen()),
        ],
      ),
    );
  }

  Widget _buildMenuOption(
      BuildContext context, String title, IconData icon, Widget screen) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        leading: Icon(icon, color: Color.fromARGB(255, 214, 133, 252)),
        trailing: Icon(Icons.arrow_forward_ios,
            color: Color.fromARGB(255, 255, 135, 255)),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
      ),
    );
  }
}
