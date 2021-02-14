import 'package:flutter/material.dart';

class CustomLabels extends StatelessWidget {
  final String ruta;

  const CustomLabels({Key key, @required this.ruta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          labelGrayText(),
          style: TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, this.ruta);
          },
          child: Text(labelBlueText(),
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
      ]),
    );
  }

  String labelGrayText() {
    return this.ruta == 'login'
        ? '¿Tenés una cuenta?'
        : '¿No tenés una cuenta?';
  }

  String labelBlueText() {
    return this.ruta == 'login' ? '¡Ingresar!' : '¡Crea una ahora!';
  }
}
