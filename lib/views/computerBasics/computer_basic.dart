import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:freelancing_app/main.dart';

class ComputerBasic extends StatelessWidget {
  final List<Map<String, String>> computerBasicsSubcategories = [
    {
      "title": "Operating Systems",
      "description": "Learn to navigate Windows, macOS, or Linux."
    },
    {
      "title": "File Management",
      "description": "Master file organization, storage, and backups."
    },
    {
      "title": "Internet Basics",
      "description": "Understanding browsers, search engines, and safe browsing."
    },
    {
      "title": "Keyboard Shortcuts",
      "description": "Essential shortcuts to boost productivity."
    },
    {
      "title": "Email Usage",
      "description": "Setting up, managing, and organizing emails."
    },
    {
      "title": "Software Installation",
      "description": "Install and manage applications on your computer."
    },
    {
      "title": "Basic Troubleshooting",
      "description": "Solve common computer issues independently."
    },
    {
      "title": "Word Processing",
      "description": "Introduction to MS Word, Google Docs, and formatting basics."
    },
    {
      "title": "Spreadsheets",
      "description": "Learn Excel or Google Sheets for data management."
    },
    {
      "title": "Presentation Tools",
      "description": "Basics of PowerPoint or Canva for creating slides."
    },
    {
      "title": "Security Basics",
      "description": "Protecting your computer from viruses and malware."
    },
    {
      "title": "Cloud Storage and Backup",
      "description": "Use tools like Google Drive, Dropbox, or OneDrive effectively."
    },
    {
      "title": "Typing Skills",
      "description": "Improve your typing speed and accuracy."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.primaryBgColor,
      appBar: AppBar(
        title: const Text("Computer Basics"),
        backgroundColor: MyColors.secondaryBgColor, // App color for the app bar
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two cards per row
            crossAxisSpacing: 16.0, // Space between columns
            mainAxisSpacing: 16.0, // Space between rows
            childAspectRatio: 0.8, // Adjust card height
          ),
          itemCount: computerBasicsSubcategories.length,
          itemBuilder: (context, index) {
            final subcategory = computerBasicsSubcategories[index];
            return Card(
              elevation: 4, // Adds shadow to the card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color:MyColors.secondaryBgColor, // App color for cards
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      subcategory['title']!,
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color:MyColors.rawWhiteColor, // Dark text for contrast
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subcategory['description']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: MyColors.greyColor, // Subtle gray for description
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // Prevent overflow
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
