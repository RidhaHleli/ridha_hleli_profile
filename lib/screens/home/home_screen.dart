import 'package:flutter/material.dart';

import 'package:ridha_hleli/screens/main_screen.dart';

import 'careers.dart';
import 'home_banner.dart';
import 'my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: const [
        HomeBanner(),
        MyProjects(),
        Careers(),
      ],
    );
  }
}
