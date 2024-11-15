import 'package:flutter/material.dart';

import '../../constants/my_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;

  const TextFieldWidget({super.key, required this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 15),
            fillColor: MyColors.whiteColor,
            filled: true,
            hintText: hintText ?? "",
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: MyColors.blackColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: MyColors.whiteColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: MyColors.whiteColor))),
      ),
    );
  }
}
