import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/password.dart';
import 'package:flutter_application_1/pages/principal.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/screens/onboarding/body_boarding2.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 251, 252),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
            child: LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportContrains) {
              return SingleChildScrollView(
                  child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "Bienvenido",
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 33, 10, 240)),
                    ),
                  ),
                  const SizedBox(
                    width: 155,
                    height: 155,
                    child: ClipOval(
                      child:
                          Image(image: AssetImage('assets/images/images.jpg')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        primary: Color.fromARGB(255, 80, 77, 78),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Password()),
                        );
                      },
                      child: const Text('Se me olvido mi contrase??a'),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Ingresar')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: const Text('Registrar')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BodyBoarding2()),
                        );
                      },
                      child: const Text('Ir A Veterinaria')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Principal()),
                        );
                      },
                      child: const Text('Home Veterinaria'))
                ],
              ));
            }),
          ),
        ));
  }
}
