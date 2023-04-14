// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:learning_course_ui/constants/colors.dart';
import 'package:learning_course_ui/models/course_model.dart';
import 'package:learning_course_ui/screens/home/widget/category_title.dart';
import 'package:learning_course_ui/screens/home/widget/course_item.dart';
import 'package:learning_course_ui/screens/home/widget/emoji_text.dart';
import 'package:learning_course_ui/screens/home/widget/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courses = CourseModel.generateCourses();
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EmojiText(),
            const SearchInput(),
            const CategoryTitle('Top of the week', 'View All'),
            CourseItem(course: courses.first),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: kFontLight.withOpacity(.3),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: kFont.withOpacity(.4),
              ),
            ),
            Positioned(
              top: 15,
              right: 27,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(color: kAccent, shape: BoxShape.circle),
              ),
            )
          ],
        )
      ],
    );
  }
}
