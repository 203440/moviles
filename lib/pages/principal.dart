// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register_button.dart';

import 'login.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportContrains) {
          return SingleChildScrollView(
              child: Column(
            children: [
              const SizedBox(
                width: 300,
                height: 300,
                child: (Image(image: AssetImage('assets/images/fotito.png'))),
              ),
              ElevatedButton(
                /*Google*/
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 23, 151, 255),
                  onPrimary: const Color.fromARGB(255, 254, 253, 253),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  /*googleLogin();*/
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/google.png"),
                        height: 18.0,
                        width: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 8),
                        child: Text(
                          'Continuar con Google',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 253, 253),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                /*Facebook*/
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 22, 89, 144),
                  onPrimary: const Color.fromARGB(255, 254, 253, 253),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  /*googleLogin();*/
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/facebook.png"),
                        height: 18.0,
                        width: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 4),
                        child: Text(
                          'Continuar con Facebook',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 253, 253),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                /*e-mail*/
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 251, 252, 252),
                  onPrimary: const Color.fromARGB(255, 2, 2, 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(
                          171, 58, 57, 57)), //border width and color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterButton()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/email.png"),
                        height: 18.0,
                        width: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 8),
                        child: Text(
                          'Registrarse con e-mail',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(137, 59, 58, 58),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  primary: Color.fromARGB(255, 251, 64, 151),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const Text('Entrar como invitado'),
              ),
              /*const SizedBox(height: 20),*/
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  primary: Color.fromARGB(255, 2, 110, 29),
                ),
                onPressed: () {},
                child: const Text('Entrar como vendedor'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 5, right: 6),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        width: 130,
                        child: Text(
                          '¿Ya tienes cuenta?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 11, 11, 11),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        width: 130,
                        child: Text(
                          'Iniciar sesión',
                          style: TextStyle(
                            color: Color(0xFFE1416D),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ));
        }),
      ),
    ));
  }
}
