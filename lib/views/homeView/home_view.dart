import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:freelancing_app/resources/globalWidgets/card_widget.dart';
import 'package:freelancing_app/resources/globalWidgets/text_widget.dart';
import 'package:freelancing_app/views/homeView/widgets/category_widget.dart';

import '../../resources/dummy_data/dummy_data.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
 final List data = DummyData().data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.primaryBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome Card
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient:  LinearGradient(
                      colors: [MyColors.linearBgColor, MyColors.secondaryLinearBgColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child:  Row(
                    children: [
                      const  CircleAvatar(backgroundImage:AssetImage('assets/icons/logo.png',) ,radius: 35,),
                      const  SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              label: "Welcome to Freelancing Guide",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: MyColors.rawWhiteColor,
                            ),
                           const SizedBox(height: 8.0),
                            TextWidget(
                              label: "Empower your skills and start earning online.",
                              fontSize: 14,
                              color:MyColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),

                // Categories Section
                 TextWidget(
                  label: "Explore Categories",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color:MyColors.rawWhiteColor,
                ),
                const SizedBox(height: 12.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryWidget(title: '"Learn Skills"', icon:  Icons.school,),
                    CategoryWidget(title:"Find Projects", icon: Icons.work, ),
                    CategoryWidget(title:"Build Portfolio", icon: Icons.folder),
                  ],
                ),

                const SizedBox(height: 20.0),

                // Trending Content Section
                 TextWidget(
                  label: "Just for you",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: MyColors.rawWhiteColor,
                ),
                const SizedBox(height: 12.0),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return CardWidget(
                      title: data[index]["title"],
                      subtitle: data[index]["subtitle"],
                      imagePath: data[index]["leading"],
                      widget:data[index]["widget"],
                        article:data[index]["article"]
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: MyColors.blackColor,
        unselectedItemColor:MyColors.greyColor.withOpacity(0.6),
        selectedItemColor: MyColors.secondaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Bookmarks", icon: Icon(Icons.bookmark)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
