
import 'package:flutter/material.dart';
import 'package:geminibot/utils/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        endIndent: 10,
        indent: 10,
        color: grey,
        thickness: 0.5,
      ),
    );
  }
}