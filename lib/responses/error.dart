import 'package:flutter/material.dart';
import 'package:resume_console/services/constants/k_colors.dart';

class Error extends StatelessWidget {
  final String value;

  const Error({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Command not found: $value.",
            style: const TextStyle(
              color: KColors.kRed,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Type 'help' to view a list of available commands.",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "CouierPrime",
              fontSize: 15.5,
            ),
          )
        ],
      ),
    );
  }
}
