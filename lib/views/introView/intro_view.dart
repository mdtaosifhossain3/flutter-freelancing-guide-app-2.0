import 'package:flutter/material.dart';
import 'package:freelancing_app/resources/appurls/icons_urls.dart';
import 'package:freelancing_app/resources/globalWidgets/button_widget.dart';
import 'package:freelancing_app/resources/globalWidgets/text_widget.dart';
import 'package:freelancing_app/resources/navigation/navigation_route.dart';
import 'package:freelancing_app/views/introView/otp_verification_view.dart';

import '../../resources/globalWidgets/text_field_widget.dart';

class IntroView extends StatelessWidget {
  IntroView({super.key});
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      IconsUrls.iconURL,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidget(
                      label: "আপনার ফ্রিল্যান্সিং গাইড অ্যাপ",
                      fontSize: 24,
                    )
                  ],
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      controller: controller,
                      hintText: "আপনার নম্বর লিখুন...",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(navigatorRoute(OtpVerificationView()));
                        },
                        child: const ButtonWidget(name: "সাবমিট"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
