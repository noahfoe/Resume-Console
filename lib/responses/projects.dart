import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:resume_console/services/constants/k_colors.dart';
import 'package:resume_console/services/open_url.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  ProjectsState createState() => ProjectsState();
}

class ProjectsState extends State<Projects> {
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
      child: RichText(
        text: TextSpan(
          text:
              "I have worked on many personal projects over the years, most of which are on my ",
          style: const TextStyle(
            color: KColors.kWhite,
            fontSize: 16.0,
            fontFamily: "CouierPrime",
          ),
          children: [
            TextSpan(
              text: "GitHub\n\n",
              recognizer: _tapGestureRecognizer
                ..onTap = () async {
                  String url = "https://github.com/noahfoe";
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
              text: "My most recent personal project is this website!\n",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
              ),
            ),
            TextSpan(
              text: "Flutter Web Console\n\n",
              recognizer: _tapGestureRecognizer
                ..onTap = () async {
                  String url = "https://github.com/noahfoe/Resume-Console";
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
                  "Another personal project that I am most proud of is an app that I made for a College class in my Junior year of college.\n",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
              ),
            ),
            TextSpan(
              text: "Texas Real State\n",
              recognizer: _tapGestureRecognizer
                ..onTap = () async {
                  String url = "https://github.com/noahfoe/texas_real_state";
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
                  "• This was one of the first projects that I made in Flutter.\n• The name of the app is a play-on words with 'Texas State' and 'Real Estate'\n• It is a simple app that allows you to search for apartments in San Marcos, Texas and view their details.\n• It was made with the intentions of Texas State students using it to search for apartments",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
              ),
            ),
            const TextSpan(
              text:
                  "• If I were to start this project over again, one thing that I would change would be to at least simulate an API call for the data, instead of 'hard-coding' it into the app. I originally tried to find a free real estate API online, but I was unable to find one that was free.\n\n",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
              ),
            ),
            const TextSpan(
              text:
                  "\n\nTo learn more about where I went to school, try typing the command `education`.",
              style: TextStyle(
                color: KColors.kBlue,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
