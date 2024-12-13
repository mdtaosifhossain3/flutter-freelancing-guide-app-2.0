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
      backgroundColor: const Color(0xff1A1A22),
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
                    gradient: const LinearGradient(
                      colors: [Color(0xFF4E54C8), Color(0xFF8F94FB)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(backgroundImage:AssetImage('assets/icons/logo.png',) ,radius: 35,),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              label: "Welcome to Freelancing Guide",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            SizedBox(height: 8.0),
                            TextWidget(
                              label: "Empower your skills and start earning online.",
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),

                // Categories Section
                const TextWidget(
                  label: "Explore Categories",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
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
                const TextWidget(
                  label: "Just for you",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
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
                      widget:data[index]["widget"]
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
        unselectedItemColor: Colors.grey.withOpacity(0.6),
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
