import 'package:flutter/material.dart';
import 'package:freelancing_app/resources/globalWidgets/text_widget.dart';

import '../../constants/my_colors.dart';


class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final Widget widget;
  const CardWidget({super.key,required this.widget, required this.title,required this.subtitle, required this.imagePath,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xff23262F),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return widget;
          }));
        },
        child: Row(
          children: [
            Image.asset(imagePath, height: 60, width: 60, fit: BoxFit.cover,color: MyColors.whiteColor,),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    label: title,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8.0),
                  TextWidget(
                    label: subtitle,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
