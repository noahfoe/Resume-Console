import 'package:flutter/material.dart';
import 'package:resume_console/services/constants/k_colors.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: RichText(
        text: const TextSpan(
          text: "Type any of the commands below to get some more info.",
          style: TextStyle(
            color: KColors.kWhite,
            fontSize: 16.0,
            fontFamily: "CouierPrime",
            fontWeight: FontWeight.normal,
          ),
          children: [
            TextSpan(
              text: "\n\nabout",
              style: TextStyle(
                color: KColors.kBlue,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "\n   - Learn more about me and this website",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: "\n\nskills",
              style: TextStyle(
                color: KColors.kBlue,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text:
                  "\n   - See if i have the skills that you or your company needs",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: "\n\nprojects",
              style: TextStyle(
                color: KColors.kBlue,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text:
                  "\n   - See my personal projects that I have been working on in my free time",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: "\n\neducation",
              style: TextStyle(
                color: KColors.kBlue,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "\n   - See where I learned my skills",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: "\n\ncontact",
              style: TextStyle(
                color: KColors.kBlue,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "\n   - Find out how to get into contact with me",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: "\n\nclear",
              style: TextStyle(
                color: KColors.kBlue,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "\n   - Resets all the text in the terminal",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
