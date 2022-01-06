import 'package:flutter/material.dart';
import 'package:ridha_hleli/components/animated_progress_indicator.dart';

import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.95,
          label: "WordPress",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.52,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Git",
        ),
      ],
    );
  }
}
