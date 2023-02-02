import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 252, 252),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: LayoutBuilder(
              builder:
                  (BuildContext context, BoxConstraints viewportContrains) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportContrains.maxHeight,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 30, right: 30),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: SizedBox(
                                    width: 130,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Age',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: SizedBox(
                                    width: 130,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Genero',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.email)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'LastName',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'FirstName',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Phone',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.phone)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.password)),
                              obscureText: true,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.password)),
                              obscureText: true,
                            ),
                          ),
                          //ElevatedButton(
                          //onPressed: () {}, child: const Text('Ingresar')),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('Registrar')),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                              child: const Text('Cancelar'))
                        ],
                      )),
                );
              },
            )),
      ),
    );
  }
}
