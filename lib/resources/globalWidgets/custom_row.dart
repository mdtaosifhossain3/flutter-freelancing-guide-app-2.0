import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:freelancing_app/resources/globalWidgets/text_widget.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final String value;
  const CustomRow({super.key,required this.title,required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
        TextWidget(label: title,fontWeight: FontWeight.bold,fontSize: 20,color: MyColors.secondaryColor,),
        TextButton(onPressed: (){}, child: TextWidget(label: value,color: Colors.grey,fontSize: 16,))

      ],),
    );
  }
}
