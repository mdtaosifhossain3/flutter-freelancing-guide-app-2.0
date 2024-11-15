import 'package:flutter/material.dart';

import '../../constants/my_colors.dart';
import 'text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String name;
  const ButtonWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: MyColors.blackColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: TextWidget(
        label: name,
      )),
    );
  }
}
