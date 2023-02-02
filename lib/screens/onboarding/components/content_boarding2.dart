import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContentBoarding2 extends StatelessWidget {
  const ContentBoarding2({super.key, this.title, this.title2, this.image});
  final String? title, title2, image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 200, left: 50, right: 50),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 200,
              image: AssetImage(image!),
            ),
            Text(
              title!,
              style: const TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 87, 1, 140),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title2!,
              style: const TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
