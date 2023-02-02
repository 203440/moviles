import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/onboarding/body_boarding2.dart';
import 'package:flutter_application_1/screens/onboarding/components/content_boarding2.dart';
import 'package:flutter_application_1/screens/onboarding/components/content_page.dart';

import 'package:flutter_application_1/pages/login.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  final PageController siguiente = PageController();
  int currentPage = 0;
  List<Map<dynamic, dynamic>> boardingData = [
    {
      'Title': 'ESPARCIMIENTO',
      'Title2': 'Brindamos todos los servicios para consentir a tu mascota',
      'Image': 'assets/images/B1.png'
    },
    {
      'Title': 'ADOPCIÓN',
      'Title2':
          'Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat.',
      'Image': 'assets/images/B2.png'
    },
    {
      'Title': 'HOSPITALIDAD',
      'Title2':
          'Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat.',
      'Image': 'assets/images/B3.png'
    },
    {
      'Title': 'VETERINARIA',
      'Title2':
          'Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat.',
      'Image': 'assets/images/B4.png'
    },
    {
      'Title': 'TIENDA',
      'Title2': 'Compra todas las necesidades de tu mascota sin salir de casa.',
      'Image': 'assets/images/B5.png'
    }
  ];

  @override
  void dispose() {
    siguiente.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: siguiente,
              itemBuilder: (context, index) => ContentBoarding2(
                title: boardingData[index]['Title'],
                title2: boardingData[index]['Title2'],
                image: boardingData[index]['Image'],
              ),
              itemCount: boardingData.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      boardingData.length, (index) => page(index, currentPage)),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: SizedBox(
                  width: 300,
                  child: OutlinedButton(
                    onPressed: () {
                      if (siguiente.page == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      }
                      siguiente.nextPage(
                          curve: Curves.ease,
                          duration: const Duration(milliseconds: 300));
                    },
                    style: OutlinedButton.styleFrom(
                        shadowColor: Colors.black,
                        backgroundColor: currentPage == 4
                            ? const Color.fromARGB(255, 112, 171, 113)
                            : null,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: Text(
                      currentPage == 4 ? 'Continuar' : 'Siguiente',
                      style: currentPage == 4
                          ? const TextStyle(color: Colors.white, fontSize: 18)
                          : const TextStyle(
                              color: Color.fromARGB(255, 113, 113, 113),
                              fontSize: 18),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
