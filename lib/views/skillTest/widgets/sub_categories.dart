import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:freelancing_app/main.dart';
import 'package:freelancing_app/resources/dummy_data/dummy_data.dart';

import '../start_the_test.dart';

class SubCategories extends StatelessWidget {

  final List<Map<String,dynamic>> dd;

  SubCategories({super.key, required this.dd});

  List<Map<String, dynamic>> skillsCategories = [
    {
      "category": "Web Development",
      "description": "Building and maintaining websites and web applications",
      "currentDemandLevel": "Very High",
      "subCategories": [
        {
          "name": "Frontend Development",
          "inDemandSkills": [
            "React",
            "Vue.js",
            "Next.js",
            "Tailwind CSS",
            "TypeScript"
          ],
          "upcomingSkills": ["Astro", "Svelte", "Web Components"],
          "averageHourlyRate": "50-100"
        },
        {
          "name": "Backend Development",
          "inDemandSkills": [
            "Node.js",
            "Python/Django",
            "Ruby on Rails",
            "PHP/Laravel"
          ],
          "upcomingSkills": ["Rust", "Go", "Serverless Architecture"],
          "averageHourlyRate": "60-120"
        },
        {
          "name": "Full Stack Development",
          "inDemandSkills": [
            "MERN Stack",
            "MEAN Stack",
            "Laravel + Vue",
            "Django + React"
          ],
          "upcomingSkills": ["Web3 Development", "Edge Computing"],
          "averageHourlyRate": "70-150"
        }
      ]
    },
    {
      "category": "Digital Marketing",
      "description": "Promoting brands and products through digital channels",
      "currentDemandLevel": "High",
      "subCategories": [
        {
          "name": "SEO",
          "inDemandSkills": [
            "Technical SEO",
            "Content Optimization",
            "Local SEO",
            "Mobile SEO"
          ],
          "upcomingSkills": ["AI-Powered SEO", "Voice Search Optimization"],
          "averageHourlyRate": "40-100"
        },
        {
          "name": "Social Media Marketing",
          "inDemandSkills": [
            "Content Strategy",
            "Paid Advertising",
            "Analytics",
            "Community Management"
          ],
          "upcomingSkills": ["AR Marketing", "Social Commerce"],
          "averageHourlyRate": "35-85"
        },
        {
          "name": "Content Marketing",
          "inDemandSkills": [
            "Content Strategy",
            "Copywriting",
            "Email Marketing",
            "Marketing Automation"
          ],
          "upcomingSkills": ["AI Content Generation", "Interactive Content"],
          "averageHourlyRate": "45-120"
        }
      ]
    },
    {
      "category": "Mobile Development",
      "description": "Creating applications for mobile devices",
      "currentDemandLevel": "Very High",
      "subCategories": [
        {
          "name": "iOS Development",
          "inDemandSkills": ["Swift", "SwiftUI", "Core Data", "ARKit"],
          "upcomingSkills": ["Vision Pro Development", "visionOS"],
          "averageHourlyRate": "60-150"
        },
        {
          "name": "Android Development",
          "inDemandSkills": [
            "Kotlin",
            "Jetpack Compose",
            "Android SDK",
            "Material Design"
          ],
          "upcomingSkills": ["Foldable Device Development", "Android Auto"],
          "averageHourlyRate": "50-130"
        },
        {
          "name": "Cross-Platform Development",
          "inDemandSkills": ["React Native", "Flutter", "Xamarin"],
          "upcomingSkills": ["Super Apps Development", "Mini Programs"],
          "averageHourlyRate": "55-140"
        }
      ]
    },
    {
      "category": "AI & Machine Learning",
      "description": "Developing AI-powered solutions and ML models",
      "currentDemandLevel": "Very High",
      "subCategories": [
        {
          "name": "Machine Learning",
          "inDemandSkills": [
            "TensorFlow",
            "PyTorch",
            "Scikit-learn",
            "Computer Vision"
          ],
          "upcomingSkills": ["AutoML", "Edge AI", "Quantum ML"],
          "averageHourlyRate": "80-200"
        },
        {
          "name": "AI Development",
          "inDemandSkills": [
            "LLM Integration",
            "NLP",
            "ChatGPT API",
            "AI Model Fine-tuning"
          ],
          "upcomingSkills": ["Multimodal AI", "AI Agents"],
          "averageHourlyRate": "100-250"
        }
      ]
    },
    {
      "category": "UI/UX Design",
      "description": "Creating user interfaces and experiences",
      "currentDemandLevel": "High",
      "subCategories": [
        {
          "name": "UI Design",
          "inDemandSkills": [
            "Figma",
            "Adobe XD",
            "Design Systems",
            "Responsive Design"
          ],
          "upcomingSkills": ["3D UI Design", "AR/VR Interfaces"],
          "averageHourlyRate": "45-120"
        },
        {
          "name": "UX Design",
          "inDemandSkills": [
            "User Research",
            "Wireframing",
            "Prototyping",
            "Usability Testing"
          ],
          "upcomingSkills": ["Voice UI Design", "Gesture Interfaces"],
          "averageHourlyRate": "50-130"
        }
      ]
    },
    {
      "category": "Data Science",
      "description": "Analyzing and interpreting complex data",
      "currentDemandLevel": "High",
      "subCategories": [
        {
          "name": "Data Analysis",
          "inDemandSkills": ["Python", "R", "SQL", "Power BI", "Tableau"],
          "upcomingSkills": ["Real-time Analytics", "Predictive Analytics"],
          "averageHourlyRate": "50-150"
        },
        {
          "name": "Data Engineering",
          "inDemandSkills": [
            "Apache Spark",
            "Hadoop",
            "ETL",
            "Data Warehousing"
          ],
          "upcomingSkills": ["Data Mesh", "Data Fabric"],
          "averageHourlyRate": "70-180"
        }
      ]
    },
    {
      "category": "Cybersecurity",
      "description": "Protecting systems and networks from threats",
      "currentDemandLevel": "Very High",
      "subCategories": [
        {
          "name": "Security Analysis",
          "inDemandSkills": [
            "Penetration Testing",
            "Vulnerability Assessment",
            "Security Auditing"
          ],
          "upcomingSkills": ["Zero Trust Security", "Quantum Cryptography"],
          "averageHourlyRate": "70-200"
        },
        {
          "name": "Cloud Security",
          "inDemandSkills": [
            "AWS Security",
            "Azure Security",
            "Cloud Infrastructure Protection"
          ],
          "upcomingSkills": ["DevSecOps", "Blockchain Security"],
          "averageHourlyRate": "80-220"
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.primaryBgColor,
      appBar: AppBar(
        title: const Text("Test Your Skills"),
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
          itemCount: dd.length,
          itemBuilder: (context, index) {
            final subcategory = dd[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> StartTheTest(ddd: subcategory["questions"],)));
              },
              child: Card(

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
                        subcategory['name'],
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:MyColors.rawWhiteColor, // Dark text for contrast
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Text(
                      //   subcategory['description']!,
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //     fontSize: 14,
                      //     color: MyColors.greyColor, // Subtle gray for description
                      //   ),
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis, // Prevent overflow
                      // ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
