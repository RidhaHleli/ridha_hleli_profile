import 'package:flutter/material.dart';
import 'package:ridha_hleli/models/careers.dart';

import '../../constants.dart';

class Careers extends StatelessWidget {
  const Careers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Careers",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              demo_careers.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: CareersCard(
                  career: demo_careers[index],
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}

class CareersCard extends StatelessWidget {
  const CareersCard({
    Key? key,
    required this.career,
  }) : super(key: key);

  final Career career;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            career.title!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(career.year!),
          const SizedBox(height: defaultPadding),
          Text(
            career.tasks!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
