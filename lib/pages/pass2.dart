import 'package:flutter/material.dart';

class Pass2 extends StatelessWidget {
  const Pass2({super.key});

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
                    'Ingresa tu email para recuperar tu contraseña',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(192, 48, 46, 46),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 450),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10, left: 10),
                        child: Text(
                          'Correo electrónico',
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
                          hintText: 'Direccion de correo',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
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
                      onPressed: () {},
                      child: const Text(
                        'Enviar solicitud',
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
