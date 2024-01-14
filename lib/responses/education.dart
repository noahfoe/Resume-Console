import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:resume_console/services/constants/k_colors.dart';
import 'package:resume_console/services/open_url.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  EducationState createState() => EducationState();
}

class EducationState extends State<Education> {
  late TapGestureRecognizer _tapGestureRecognizer;
  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "\nCollege",
              recognizer: _tapGestureRecognizer
                ..onTap = () async {
                  String url = "https://www.txst.edu";
                  openUrl(url);
                },
              style: const TextStyle(
                color: KColors.kOrange,
                decoration: TextDecoration.underline,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
              ),
              children: [
                const TextSpan(
                  text: " - Texas State University in San Marcos, Texas.",
                  style: TextStyle(
                    color: KColors.kWhite,
                    fontFamily: "CouierPrime",
                    fontSize: 16.0,
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nYouTube",
                  recognizer: _tapGestureRecognizer
                    ..onTap = () async {
                      String url = "https://www.youtube.com";
                      openUrl(url);
                    },
                  style: const TextStyle(
                    color: KColors.kOrange,
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontFamily: "CouierPrime",
                  ),
                ),
                const TextSpan(
                  text:
                      " - I have taken many online courses on YouTube to learn more about Flutter and other programming languages.",
                  style: TextStyle(
                    color: KColors.kWhite,
                    fontSize: 16.0,
                    fontFamily: "CouierPrime",
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: "\nGoogle",
                  recognizer: _tapGestureRecognizer
                    ..onTap = () async {
                      String url = "https://www.google.com";
                      openUrl(url);
                    },
                  style: const TextStyle(
                    color: KColors.kOrange,
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontFamily: "CouierPrime",
                  ),
                ),
                const TextSpan(
                  text:
                      " - I have mastered the art of using Google's keywords to find answers to almost any problem.",
                  style: TextStyle(
                    color: KColors.kWhite,
                    fontSize: 16.0,
                    fontFamily: "CouierPrime",
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
