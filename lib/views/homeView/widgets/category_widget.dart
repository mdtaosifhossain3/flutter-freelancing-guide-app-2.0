
import 'package:flutter/material.dart';

import '../../../constants/my_colors.dart';
import '../../../resources/globalWidgets/text_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key,required this.title,required this.icon});
  final String title;
 final  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.27,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: MyColors.secondaryBgColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Icon(icon, size: 32, color: MyColors.secondaryColor),
          const SizedBox(height: 8.0),
          TextWidget(
            label: title,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: MyColors.rawWhiteColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
