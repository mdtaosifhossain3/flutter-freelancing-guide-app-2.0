import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:freelancing_app/constants/my_colors.dart';

import '../../resources/globalWidgets/text_widget.dart';


class ArticleView extends StatelessWidget {
  final  article;

  const ArticleView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryBgColor,

      appBar: AppBar(title:TextWidget(
        label: "title",

      ),automaticallyImplyLeading: true,),
      body: SingleChildScrollView(
        child: Html(data: article["data"]  ,
            style: {
          "body": Style(
            lineHeight: LineHeight.number(1.5),
            color: MyColors.rawWhiteColor
          ),
          "h1": Style(
            color: MyColors.primaryColor,
            fontSize: FontSize.xxLarge,
            fontWeight: FontWeight.bold,
          ),
          "h2": Style(
            color: MyColors.secondaryColor,
            fontSize: FontSize.xLarge,
            fontWeight: FontWeight.bold,
          ),
          "h3": Style(fontSize: FontSize.larger),
          "p": Style(
            fontSize: FontSize(18),
            lineHeight: const LineHeight(1.5),
          ),
          "ul": Style(margin: Margins.only(top: 15)),
          "ol": Style(margin: Margins.only(top: 15)),
          "li": Style(
              fontSize: FontSize.medium, margin: Margins.only(bottom: 10)),
          "a": Style(
            color:MyColors.secondaryColor,
            textDecoration: TextDecoration.underline,
          ),
          "strong": Style(color: MyColors.redColor),
          ".highlight": Style(
              color: MyColors.yellowColor,
              padding: HtmlPaddings.all(5),
              fontWeight: FontWeight.bold),
          "blockquote": Style(
              backgroundColor:MyColors.whiteColor,
              border:  Border(
                  left: BorderSide(width: 5, color:MyColors.greyColor)),
              margin: Margins.only(top: 20),
              padding: HtmlPaddings.symmetric(horizontal: 10, vertical: 20),
              fontStyle: FontStyle.italic)
        }),
      ),
    );
  }
}