import 'package:flutter/material.dart';

class View2 extends StatelessWidget {
  const View2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Karla Ruiz Diaz',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 85, 181, 245),
                ),
              ),
              Text(
                '20 años',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 85, 181, 245),
                ),
              ),
              Text(
                '203440@ids.upchiapas.edu.mx',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 85, 181, 245),
                ),
              ),
            ]),
      ),
    );
  }
}
