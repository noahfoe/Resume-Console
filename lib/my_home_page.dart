// ignore: depend_on_referenced_packages
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume_console/responses/about.dart';
import 'package:resume_console/responses/contact.dart';
import 'package:resume_console/responses/education.dart';
import 'package:resume_console/responses/error.dart' as err;
import 'package:resume_console/responses/help.dart';
import 'package:resume_console/responses/projects.dart';
import 'package:resume_console/responses/skills.dart';
import 'package:resume_console/services/constants/k_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _list = [];

  @override
  void initState() {
    super.initState();
    // Start with just a text field widget and the header
    _list.add(addTextField());
  }

  /// This function returns a text field widget,
  /// in which the user can enter a command.
  Widget addTextField() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: TextField(
        key: UniqueKey(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
        cursorColor: KColors.kWhite,
        cursorHeight: 18.0,
        autofocus: true,
        showCursor: true,
        onSubmitted: (value) {
          // Determine what the command was and return the corresponding widget
          Widget text = outputText(value);
          // If the user enters 'clear' command, clear the console
          if (value.toLowerCase().trim() == "clear") {
            _list.clear();
          } else {
            // Otherwise, add the command text to the list
            _list.add(text);
          }
          // Add a new text field to the list for the next command
          _list.add(addTextField());
          setState(() {});
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 9.0),
            child: Text(
              'code@noah:~# ',
              style: TextStyle(
                color: KColors.kGreen,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// This function takes in the user input command
  /// and returns the corresponding widget of text to be displayed
  /// in the console.
  Widget outputText(String value) {
    Widget text;
    // Define the console commands and return the corresponding widget
    if (value.toLowerCase().trim() == "help") {
      text = const Help();
    } else if (value.toLowerCase().trim() == "about") {
      text = const About();
    } else if (value.toLowerCase().trim() == "contact") {
      text = const Contact();
    } else if (value.toLowerCase().trim() == "education") {
      text = const Education();
    } else if (value.toLowerCase().trim() == "projects") {
      text = const Projects();
    } else if (value.toLowerCase().trim() == "skills") {
      text = const Skills();
    } else {
      // If the command is not found, return the error widget
      text = err.Error(value: value);
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kBlack,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header text
            const Padding(
              padding: EdgeInsets.only(left: 13.0, top: 23.0),
              child: Text(
                "Noah Foley",
                style: TextStyle(
                  color: KColors.kWhite,
                  fontFamily: "Parisienne",
                  fontSize: 65.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15.0),
              // Animate typing the welcome text
              child: AnimatedTextKit(
                displayFullTextOnTap: true,
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText(
                    "Welcome to my 'resume in a console' website!\n\nType 'help' to view a list of available commands.",
                    textStyle: const TextStyle(
                      color: KColors.kWhite,
                      fontSize: 16.0,
                      fontFamily: "CouierPrime",
                    ),
                    speed: const Duration(milliseconds: 37),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _list,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
