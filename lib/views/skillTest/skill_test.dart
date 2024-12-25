import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:freelancing_app/main.dart';
import 'package:freelancing_app/resources/dummy_data/dummy_data.dart';
import 'package:freelancing_app/views/skillTest/widgets/sub_categories.dart';

class SkillTest extends StatelessWidget {
  // final List<Map<String, String>> computerBasicsSubcategories = [
  //   {
  //     "title": "Operating Systems",
  //     "description": "Learn to navigate Windows, macOS, or Linux."
  //   },
  //   {
  //     "title": "File Management",
  //     "description": "Master file organization, storage, and backups."
  //   },
  //   {
  //     "title": "Internet Basics",
  //     "description": "Understanding browsers, search engines, and safe browsing."
  //   },
  //   {
  //     "title": "Keyboard Shortcuts",
  //     "description": "Essential shortcuts to boost productivity."
  //   },
  //   {
  //     "title": "Email Usage",
  //     "description": "Setting up, managing, and organizing emails."
  //   },
  //   {
  //     "title": "Software Installation",
  //     "description": "Install and manage applications on your computer."
  //   },
  //   {
  //     "title": "Basic Troubleshooting",
  //     "description": "Solve common computer issues independently."
  //   },
  //   {
  //     "title": "Word Processing",
  //     "description": "Introduction to MS Word, Google Docs, and formatting basics."
  //   },
  //   {
  //     "title": "Spreadsheets",
  //     "description": "Learn Excel or Google Sheets for data management."
  //   },
  //   {
  //     "title": "Presentation Tools",
  //     "description": "Basics of PowerPoint or Canva for creating slides."
  //   },
  //   {
  //     "title": "Security Basics",
  //     "description": "Protecting your computer from viruses and malware."
  //   },
  //   {
  //     "title": "Cloud Storage and Backup",
  //     "description": "Use tools like Google Drive, Dropbox, or OneDrive effectively."
  //   },
  //   {
  //     "title": "Typing Skills",
  //     "description": "Improve your typing speed and accuracy."
  //   },
  // ];

   SkillTest({super.key});

   List<Map<String, dynamic>> skillsCategories = [
     {
       "category": "Web Development",
       "description": "Building and maintaining websites and web applications",
       "currentDemandLevel": "Very High",
       "subCategories": [
         {
           "name": "Frontend Development",
           "questions": [
             {
               "question": "What does HTML stand for?",
               "difficulty": "easy",
               "options": [
                 {"text": "Hyper Text Markup Language", "isCorrect": true},
                 {"text": "High Text Making Language", "isCorrect": false},
                 {"text": "Hyper Text Making Links", "isCorrect": false},
                 {"text": "High Text Markup Links", "isCorrect": false}
               ]
             },
             {
               "question": "Which CSS property is used to change the text color?",
               "difficulty": "easy",
               "options": [
                 {"text": "text-color", "isCorrect": false},
                 {"text": "color", "isCorrect": true},
                 {"text": "font-color", "isCorrect": false},
                 {"text": "text-style", "isCorrect": false}
               ]
             },
             {
               "question": "What is the purpose of the 'useEffect' hook in React?",
               "difficulty": "average",
               "options": [
                 {"text": "To handle form submissions only", "isCorrect": false},
                 {"text": "To perform side effects in function components", "isCorrect": true},
                 {"text": "To create new components", "isCorrect": false},
                 {"text": "To style components", "isCorrect": false}
               ]
             },
             {
               "question": "What is a closure in JavaScript?",
               "difficulty": "hard",
               "options": [
                 {"text": "A way to close the browser window", "isCorrect": false},
                 {"text": "A function that has access to variables in its outer scope", "isCorrect": true},
                 {"text": "A method to end a loop", "isCorrect": false},
                 {"text": "A way to close a database connection", "isCorrect": false}
               ]
             },
             {
               "question": "Which event lifecycle method is called after a component is rendered in React?",
               "difficulty": "average",
               "options": [
                 {"text": "componentDidMount", "isCorrect": true},
                 {"text": "componentWillMount", "isCorrect": false},
                 {"text": "componentRender", "isCorrect": false},
                 {"text": "componentStart", "isCorrect": false}
               ]
             },
             {
               "question": "What is the CSS Box Model?",
               "difficulty": "easy",
               "options": [
                 {"text": "A design pattern for creating boxes", "isCorrect": false},
                 {"text": "A layout model that consists of margin, border, padding, and content", "isCorrect": true},
                 {"text": "A JavaScript framework", "isCorrect": false},
                 {"text": "A type of CSS selector", "isCorrect": false}
               ]
             },
             {
               "question": "What is the purpose of Redux in React applications?",
               "difficulty": "hard",
               "options": [
                 {"text": "To create responsive designs", "isCorrect": false},
                 {"text": "To manage application state in a predictable way", "isCorrect": true},
                 {"text": "To handle routing", "isCorrect": false},
                 {"text": "To optimize images", "isCorrect": false}
               ]
             },
             {
               "question": "What is the difference between '==' and '===' in JavaScript?",
               "difficulty": "average",
               "options": [
                 {"text": "They are the same", "isCorrect": false},
                 {"text": "'===' compares both value and type, while '==' compares only value", "isCorrect": true},
                 {"text": "'==' is not a valid operator", "isCorrect": false},
                 {"text": "'===' is used only for numbers", "isCorrect": false}
               ]
             },
             {
               "question": "What is a Promise in JavaScript?",
               "difficulty": "hard",
               "options": [
                 {"text": "A guarantee that code will never fail", "isCorrect": false},
                 {"text": "An object representing eventual completion of an asynchronous operation", "isCorrect": true},
                 {"text": "A type of loop", "isCorrect": false},
                 {"text": "A way to promise variables won't change", "isCorrect": false}
               ]
             },
             {
               "question": "What is the purpose of the 'key' prop in React lists?",
               "difficulty": "average",
               "options": [
                 {"text": "It's just for decoration", "isCorrect": false},
                 {"text": "To help React identify which items have changed, been added, or been removed", "isCorrect": true},
                 {"text": "To style list items", "isCorrect": false},
                 {"text": "To count list items", "isCorrect": false}
               ]
             }
           ]
         },
         {
           "name": "Backend Development",
           "questions": [
             {
               "question": "What is an API?",
               "difficulty": "easy",
               "options": [
                 {"text": "Application Programming Interface", "isCorrect": true},
                 {"text": "Application Program Installation", "isCorrect": false},
                 {"text": "Advanced Programming Interface", "isCorrect": false},
                 {"text": "Application Program Integration", "isCorrect": false}
               ]
             },
             {
               "question": "What is a RESTful API?",
               "difficulty": "average",
               "options": [
                 {"text": "A type of database", "isCorrect": false},
                 {"text": "An architectural style for designing networked applications", "isCorrect": true},
                 {"text": "A programming language", "isCorrect": false},
                 {"text": "A type of server", "isCorrect": false}
               ]
             },
             {
               "question": "Which HTTP method is used to retrieve data?",
               "difficulty": "easy",
               "options": [
                 {"text": "POST", "isCorrect": false},
                 {"text": "PUT", "isCorrect": false},
                 {"text": "GET", "isCorrect": true},
                 {"text": "DELETE", "isCorrect": false}
               ]
             },
             {
               "question": "What is a database index?",
               "difficulty": "average",
               "options": [
                 {"text": "A copy of the entire database", "isCorrect": false},
                 {"text": "A data structure that improves the speed of data retrieval operations", "isCorrect": true},
                 {"text": "A type of database table", "isCorrect": false},
                 {"text": "A backup system", "isCorrect": false}
               ]
             },
             {
               "question": "What is SQL injection?",
               "difficulty": "hard",
               "options": [
                 {"text": "A way to optimize SQL queries", "isCorrect": false},
                 {"text": "A type of database backup", "isCorrect": false},
                 {"text": "A security vulnerability where malicious SQL code is inserted into an application", "isCorrect": true},
                 {"text": "A method to import SQL data", "isCorrect": false}
               ]
             },
             {
               "question": "What is the purpose of database normalization?",
               "difficulty": "hard",
               "options": [
                 {"text": "To increase data redundancy", "isCorrect": false},
                 {"text": "To organize data to reduce redundancy and improve data integrity", "isCorrect": true},
                 {"text": "To make the database bigger", "isCorrect": false},
                 {"text": "To delete unnecessary data", "isCorrect": false}
               ]
             },
             {
               "question": "What is middleware in web development?",
               "difficulty": "average",
               "options": [
                 {"text": "A function that has access to request and response objects", "isCorrect": true},
                 {"text": "A type of database", "isCorrect": false},
                 {"text": "A frontend framework", "isCorrect": false},
                 {"text": "A hosting service", "isCorrect": false}
               ]
             },
             {
               "question": "What is the difference between PUT and PATCH HTTP methods?",
               "difficulty": "hard",
               "options": [
                 {"text": "They are exactly the same", "isCorrect": false},
                 {"text": "PUT updates entire resource, PATCH updates partial resource", "isCorrect": true},
                 {"text": "PUT is for creating, PATCH is for deleting", "isCorrect": false},
                 {"text": "They are just different names for the same operation", "isCorrect": false}
               ]
             },
             {
               "question": "What is a session in web development?",
               "difficulty": "average",
               "options": [
                 {"text": "A permanent storage on the server", "isCorrect": false},
                 {"text": "A way to store user data temporarily on the server", "isCorrect": true},
                 {"text": "A type of database", "isCorrect": false},
                 {"text": "A JavaScript function", "isCorrect": false}
               ]
             },
             {
               "question": "What is the purpose of environment variables?",
               "difficulty": "easy",
               "options": [
                 {"text": "To make the code look better", "isCorrect": false},
                 {"text": "To store configuration settings and sensitive data outside of code", "isCorrect": true},
                 {"text": "To create environmental friendly applications", "isCorrect": false},
                 {"text": "To check the weather", "isCorrect": false}
               ]
             },
             {
               "question": "What is a webhook?",
               "difficulty": "average",
               "options": [
                 {"text": "A tool for writing code", "isCorrect": false},
                 {"text": "An automated message sent from one application to another when an event occurs", "isCorrect": true},
                 {"text": "A type of web browser", "isCorrect": false},
                 {"text": "A hosting platform", "isCorrect": false}
               ]
             },
             {
               "question": "What is the purpose of Redis?",
               "difficulty": "hard",
               "options": [
                 {"text": "To write frontend code", "isCorrect": false},
                 {"text": "An in-memory data structure store used as cache or message broker", "isCorrect": true},
                 {"text": "A JavaScript framework", "isCorrect": false},
                 {"text": "A code editor", "isCorrect": false}
               ]
             },
             {
               "question": "What is CORS?",
               "difficulty": "average",
               "options": [
                 {"text": "A programming language", "isCorrect": false},
                 {"text": "Cross-Origin Resource Sharing - a security feature controlling access to resources", "isCorrect": true},
                 {"text": "A type of database", "isCorrect": false},
                 {"text": "A web design pattern", "isCorrect": false}
               ]
             },
             {
               "question": "What is the difference between authentication and authorization?",
               "difficulty": "hard",
               "options": [
                 {"text": "They are the same thing", "isCorrect": false},
                 {"text": "Authentication verifies identity, authorization determines access rights", "isCorrect": true},
                 {"text": "Authorization verifies identity, authentication determines access rights", "isCorrect": false},
                 {"text": "Neither involves security", "isCorrect": false}
               ]
             },
             {
               "question": "What is a microservices architecture?",
               "difficulty": "hard",
               "options": [
                 {"text": "A way to make services smaller", "isCorrect": false},
                 {"text": "An architectural style that structures an application as a collection of small autonomous services", "isCorrect": true},
                 {"text": "A type of user interface", "isCorrect": false},
                 {"text": "A database design pattern", "isCorrect": false}
               ]
             }
           ]
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
          itemCount: skillsCategories.length,
          itemBuilder: (context, index) {
            final subcategory = skillsCategories[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SubCategories(dd:  subcategory['subCategories'])));
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
                        subcategory['category']!,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
