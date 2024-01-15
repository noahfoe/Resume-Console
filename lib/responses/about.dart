import 'package:flutter/material.dart';
import 'package:resume_console/services/constants/k_colors.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello There! I'm Noah Foley, a Flutter developer based in East Texas.\n",
            style: TextStyle(
              color: KColors.kWhite,
              fontSize: 16.0,
            ),
          ),
          Text(
            "I have been a Flutter App Developer for 3+ years now.\nIn the last 2 years, I have worked with a team, maintained, updated, and refactored an app, that was released on both the Google Play Store and the App Store, with thousands of daily users.\nThis app was created for the restaurant industry and allowed stores to track and reduce their wasted food, assign customizable tasks and checklists to employees for them to earn points to redeem for rewards, assign infractions and disciplinary actions to employees for negative points, plus much much more.\n",
            style: TextStyle(
              color: KColors.kWhite,
              fontSize: 16.0,
            ),
          ),
          Text(
            "Before that, I was an intern for another app that helps truck drivers and people with long commutes to make extra money by putting an advertisement on their vehicle.\nThe app tracked how long the user was driving, and plotted points on a map for the user to be able to visualize where and how far they have driven, as well as for the owner of the app to use the data to gauge how much they should be paid for their driving. The data was also useful to the owner by allowing him to determine approximately how many people have seen the advertisements, based on when and where the user was driving.\n",
            style: TextStyle(
              color: KColors.kWhite,
              fontSize: 16.0,
            ),
          ),
          Text(
            "I have also dabbled in using Flutter Web during this time as well.\nThis website was built using Flutter Web and is hosted on Github Pages.\nThe purpose of this website is to showcase my skills as a Flutter developer.",
            style: TextStyle(
              color: KColors.kWhite,
              fontSize: 16.0,
            ),
          ),
          Text(
            "\n\nTo learn more about my experience with Flutter, try typing the command `projects` or `skills`.",
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
