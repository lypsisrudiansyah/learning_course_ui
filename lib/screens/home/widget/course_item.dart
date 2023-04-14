import 'package:flutter/material.dart';
import 'package:learning_course_ui/constants/colors.dart';
import 'package:learning_course_ui/models/course_model.dart';

class CourseItem extends StatelessWidget {
  final CourseModel course;

  const CourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
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
