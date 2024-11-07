import 'package:flutter/material.dart';

class PerfilU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Color.fromARGB(255, 255, 127, 127),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
                radius: 50, backgroundImage: AssetImage('assets/profile.jpg')),
            Text("Nombre de Usuario",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("correo@ejemplo.com", style: TextStyle(fontSize: 16)),
            SizedBox(
              height: 25,
            ),

            /* cuadro numero de licencia */
            SizedBox(height: 20),
            Container(
              width: 350.0,
              height: 60,
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
                  SizedBox(width: 8.0),
                  Expanded(
                      child: ListTile(
                    title: Text('Numero de Licencia'),
                    subtitle: Text(
                      '123456789',
                    ),
                    leading: Icon(Icons.account_box),
                  )),
                ],
              ),
            ),
            SizedBox(height: 10),

            /* cambiar contraseña */
            Container(
              width: 350.0,
              height: 60,
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
                  SizedBox(width: 8.0),
                  Expanded(
                      child: ListTile(
                    title: Text('Cambiar contraseña'),
                    leading: Icon(Icons.lock),
                  )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350.0,
              height: 60,
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
                  SizedBox(width: 8.0),
                  Expanded(
                      child: ListTile(
                    title: Text('Revisar alquileres'),
                    leading: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
