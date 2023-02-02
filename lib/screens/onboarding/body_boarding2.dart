import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/onboarding/components/onboarding2.dart';

class BodyBoarding2 extends StatefulWidget {
  const BodyBoarding2({super.key});

  @override
  State<BodyBoarding2> createState() => _BodyBoarding2State();
}

class _BodyBoarding2State extends State<BodyBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoarding2(),
    );
  }
}
