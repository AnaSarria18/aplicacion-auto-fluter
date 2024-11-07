import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inicio de Sesión")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person,
                size: 100, color: Color.fromARGB(255, 250, 134, 140)),
            SizedBox(height: 15),
            Text("Bienvenido",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            Text("Inicia sesión para continuar",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 20),

            /* cuadro del correo electronico */
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Correo electrónico",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Cuadro de contraseña
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 8.0), // Espacio entre el ícono y el TextField
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Contraseña",
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Container(
              width: 400.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 250, 134, 140),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                ),
                child: Text("Iniciar Sesión"),
                onPressed: () {
                  // Acción al presionar el botón
                },
              ),
            ),

            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "¿Olvidaste tu contraseña? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Recuperar",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "¿No tienes una cuenta? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Regístrate",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
