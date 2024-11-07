import 'package:flutter/material.dart';

class PagoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medio de Pago'),
        backgroundColor: Color.fromARGB(255, 255, 127, 127),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            width: 350.0,
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 224, 230),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 255, 252, 252).withOpacity(0.5),
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
                    title: Text('Tarjeta de Crédito o Débito'),
                    leading: Icon(
                      Icons.credit_card,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2),
          Container(
            width: 350.0,
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 224, 230),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 255, 252, 252).withOpacity(0.5),
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
                    title: Text('PayPal'),
                    leading: Icon(
                      Icons.paypal,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2),
          Container(
            width: 350.0,
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 224, 230),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 255, 252, 252).withOpacity(0.5),
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
                    title: Text('Tranferencia Bancaria'),
                    leading: Icon(
                      Icons.swap_horiz,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
