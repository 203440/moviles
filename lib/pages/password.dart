import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pass2.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("Recuperar contraseña"),
            const SizedBox(
              width: 30,
            ),
            Image.asset(
              "assets/images/fotito2.jpg",
              scale: 2,
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(213, 49, 1, 94),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportContrains) {
            return SingleChildScrollView(
                child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 70, left: 1),
                  child: Text(
                    'Por seguridad tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un numero y un caracter especial',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(192, 48, 46, 46),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10, left: 10),
                        child: Text(
                          'Nueva Contraseña',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 3, 3, 3),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 300),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10, left: 10),
                        child: Text(
                          'Confirmar nueva Contraseña',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 3, 3, 3),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirma tu nueva Contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          /*suffixIcon: const Icon(
                            Icons.visibility,
                            color: Color.fromARGB(255, 186, 179, 179),
                          ),*/
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 58, 167, 89),
                        onPrimary: const Color.fromARGB(255, 2, 2, 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),

                        //border width and color
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Pass2()),
                        );
                      },
                      child: const Text(
                        'Actualizar contraseña',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 253, 253),
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              ],
            ));
          }),
        ),
      ),
    );
  }
}
