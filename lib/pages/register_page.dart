import 'package:chat/widgets/boton_azul.dart';
import 'package:flutter/material.dart';
import 'package:chat/widgets/custom_logo.dart';
import 'package:chat/widgets/custom_labels.dart';
import 'package:chat/widgets/custom_input.dart';

// ##############################################################################################################

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomLogo(
                  titulo: 'Registro',
                ),
                _Form(),
                CustomLabels(
                  ruta: 'login',
                ),
                Text('Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ##############################################################################################################

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            textController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo electrónico',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            // keyboardType: TextInputType.pa,
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Registrarse',
            onPressed: () {
              print(emailCtrl.text);
            },
          )
        ],
      ),
    );
  }
}

// ##############################################################################################################
