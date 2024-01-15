import 'package:flutter/material.dart';
import 'package:resume_console/services/constants/k_colors.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flutter, Dart, Animations, Python, JavaScript, C++, Linux, Docker, Git/Github, RESTful APIs, Figma, Jira, Confluence, Agile, Scrum, Slack, AWS, SQL, Firebase, and many more!",
            style: TextStyle(
              color: KColors.kWhite,
              fontSize: 16.0,
            ),
          ),
          Text(
            "\n\nFor more information about my projects, try typing the command `projects`.",
            style: TextStyle(
              color: KColors.kBlue,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
