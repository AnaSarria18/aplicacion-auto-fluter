import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registro")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_add,
                size: 100, color: Color.fromARGB(255, 250, 134, 140)),
            SizedBox(height: 20),
            Text("Empecemos",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Crear una nueva cuenta",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 20),

            /* cuadro de nombre completo */
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
                  Icon(Icons.person),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Nombre Completo",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            /* cuadro correo electronico */
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

            /* cuadro contraseña */
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
                  SizedBox(width: 8.0),
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

            /* cuadro confirmar contraseña */
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
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Confirmar contraseña",
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            /* Boton registrarse */
            Container(
              width: 400.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 250, 134, 140),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                ),
                child: Text("Registrarse"),
                onPressed: () {},
              ),
            ),

            /*  texto de ya tienes una cuenta */
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "¿Ya tienes una cuenta? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Iniciar sesion",
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
