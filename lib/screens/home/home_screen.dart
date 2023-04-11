// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:learning_course_ui/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBackground,
          elevation: 0,
          centerTitle: false,
          title: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Hello Rudiansyah",
              style: TextStyle(fontSize: 16.0, color: kFontLight),
            ),
          ),
          actions: [
            Stack(
              children: const [
                Icon(
                  Icons.notifications,
                ),
              ],
            )
          ],
        ),
        body: const Center());
  }
}
