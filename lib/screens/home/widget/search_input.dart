// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:learning_course_ui/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2.0,
                color: kFontLight,
              ),
            ),
            child: TextFormField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(.1),
                filled: true,
                contentPadding: const EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: "Search for history, classes ...",
                hintStyle: const TextStyle(color: kFontLight),
              ),
              onChanged: (value) {},
            ),
          ),
          Positioned(
              right: 45,
              top: 35,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                color: kAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
