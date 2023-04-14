import 'package:flutter/material.dart';
import 'package:learning_course_ui/constants/colors.dart';

class EmojiText extends StatelessWidget {
  const EmojiText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: "Let's boost your\nbrain power",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
              color: kFont,
            ),
          ),
          TextSpan(
            text: '✨',
            style: TextStyle(
              fontSize: 26.0,
            ),
          ),
        ]),
      ),
    );
  }
}
