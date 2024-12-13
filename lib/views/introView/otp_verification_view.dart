import 'package:flutter/material.dart';
import 'package:freelancing_app/resources/globalWidgets/button_widget.dart';
import 'package:freelancing_app/resources/globalWidgets/text_field_widget.dart';
import '../../resources/globalWidgets/text_widget.dart';

class OtpVerificationView extends StatelessWidget {
  OtpVerificationView({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff47BFDF), Color(0xff4A91FF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextWidget(
                    label: "আপনার একাউন্ট সক্রিয় করতে কোড দিন",
                    textAlign: TextAlign.center,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      controller: controller,
                      hintText: "ওটিপি বসান...",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> OtpVerificationView()));
                        },
                        child: const ButtonWidget(name: "ভেরিফাই করুন"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
