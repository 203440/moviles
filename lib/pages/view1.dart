import 'package:flutter/material.dart';

class View1 extends StatelessWidget {
  const View1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/images.jpg'),
                height: 100,
              ),
              Text('girasoles 1'),
              Image(
                image: AssetImage('assets/images/images.jpg'),
                height: 100,
              ),
              Text('girasoles 2'),
              Image(
                image: AssetImage('assets/images/images.jpg'),
                height: 100,
              ),
              Text('girasoles 3'),
            ]),
      ),
    );
  }
}
