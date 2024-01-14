import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:resume_console/services/constants/k_colors.dart';
import 'package:resume_console/services/open_url.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
          text: "Email",
          style: const TextStyle(
            color: KColors.kPurple,
            fontSize: 16.0,
            fontFamily: "CouierPrime",
            fontWeight: FontWeight.w600,
          ),
          children: [
            const TextSpan(
              text: "\n   - noahfoley6@gmail.com",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
            const TextSpan(
              text: "\n\nPhone",
              style: TextStyle(
                color: KColors.kPurple,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            const TextSpan(
              text: "\n   - 903-918-1598",
              style: TextStyle(
                color: KColors.kWhite,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.normal,
              ),
            ),
            const TextSpan(
              text: "\n\nLinkedin",
              style: TextStyle(
                color: KColors.kPurple,
                fontSize: 16.0,
                fontFamily: "CouierPrime",
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "\n   - Click Me, I'm a link to Linkedin!",
              recognizer: _tapGestureRecognizer
                ..onTap = () async {
                  String url = "https://www.linkedin.com/in/noahfoe/";
                  openUrl(url);
                },
              style: const TextStyle(
                color: KColors.kBlue,
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
