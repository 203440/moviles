import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/onboarding/components/content_boarding.dart';
import 'package:flutter_application_1/screens/onboarding/components/content_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  List<Map<dynamic, dynamic>> boardingData = [
    {'Title': 'Value 1', 'Title2': '1', 'Image': 'assets/images/1.png'},
    {'Title': 'Value 2', 'Title2': '2', 'Image': 'assets/images/1.png'},
    {'Title': 'Value 3', 'Title2': '3', 'Image': 'assets/images/1.png'}
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          flex: 2,
          child: PageView.builder(
            itemBuilder: (context, index) => ContentBoarding(
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
          flex: 2,
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
      ],
    ));
  }
}
