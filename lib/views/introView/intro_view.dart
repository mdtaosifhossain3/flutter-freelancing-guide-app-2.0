import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:freelancing_app/resources/globalWidgets/text_widget.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

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
                      "assets/icons/logo.png",
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
                Positioned(
                    bottom: 50,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 43,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 15),
                                fillColor: MyColors.whiteColor,
                                filled: true,
                                hintText: "আপনার নম্বর লিখুন...",
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: MyColors.blackColor),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    borderSide:
                                        BorderSide(color: MyColors.whiteColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    borderSide: BorderSide(
                                        color: MyColors.whiteColor))),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                                color: MyColors.blackColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Center(
                                child: TextWidget(
                              label: "সাবমিট",
                            )),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
