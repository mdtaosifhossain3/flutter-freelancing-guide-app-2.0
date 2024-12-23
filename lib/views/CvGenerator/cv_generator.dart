import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freelancing_app/constants/my_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class CVGenerator extends StatefulWidget {
  const CVGenerator({super.key});

  @override
  State<CVGenerator> createState() => _CVGeneratorState();
}

class _CVGeneratorState extends State<CVGenerator> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController linkedinController = TextEditingController();
  final TextEditingController objectiveController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController educationController = TextEditingController();

  File? profileImage;

  Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        profileImage = File(pickedFile.path);
      });
    }
  }

  Future<void> generatePDF() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              // Header Section
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  // Left Side: Personal Info
                  pw.Expanded(
                    flex: 2,
                    child: pw.Container(
                      padding: const pw.EdgeInsets.all(8.0),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            nameController.text,
                            style: pw.TextStyle(
                              fontSize: 18,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.SizedBox(height: 8),
                          pw.Text("Email: ${emailController.text}"),
                          pw.Text("Phone: ${phoneController.text}"),
                          if (linkedinController.text.isNotEmpty)
                            pw.Text("LinkedIn: ${linkedinController.text}"),
                        ],
                      ),
                    ),
                  ),
                  // Right Side: Profile Picture
                  pw.Expanded(
                    flex: 1,
                    child: pw.Container(
                      alignment: pw.Alignment.center,
                      child: profileImage != null
                          ? pw.Image(
                        pw.MemoryImage(profileImage!.readAsBytesSync()),
                        height: 100,
                        width: 100,
                        fit: pw.BoxFit.cover,
                      )
                          : pw.Text("No Image"),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              // Career Objective
              pw.Text(
                "Career Objective",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(objectiveController.text),
              pw.SizedBox(height: 16),
              // Work Experience
              pw.Text(
                "Work Experience",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(experienceController.text),
              pw.SizedBox(height: 16),
              // Skills
              pw.Text(
                "Skills",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(skillsController.text),
              pw.SizedBox(height: 16),
              // Education
              pw.Text(
                "Education",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(educationController.text),
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryBgColor,
      appBar: AppBar(
        title: const Text("CV Generator"),
        backgroundColor:MyColors.secondaryBgColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture
            Center(
              child: GestureDetector(
                onTap: pickImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: MyColors.circleAvatarColor,
                  backgroundImage: profileImage != null ? FileImage(profileImage!) : null,
                  child: profileImage == null
                      ?  Icon(Icons.add_a_photo, color: MyColors.whiteColor)
                      : null,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Input Fields
            _buildInputField("Name","Name" ,nameController,),
            _buildInputField("Email","Email", emailController),
            _buildInputField("Phone","Phone", phoneController),
            _buildInputField("LinkedIn/GitHub/Website","LinkedIn/GitHub/Website", linkedinController),
            _buildInputField("Career Objective","Career Objective", objectiveController, maxLines: 3),
            _buildInputField("Title:\nBrief Description\nBullet Points,","Work Experience", experienceController, maxLines: 10),
            _buildInputField("Enter Skills","Skills", skillsController, maxLines: 2),
            _buildInputField(
                "Department:\nUniversity:\nYear:\nSession:","Education", educationController, maxLines: 7),
            const SizedBox(height: 20),
            // Generate PDF Button
            Center(
              child: ElevatedButton(
                onPressed: generatePDF,
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
                ),
                child: const Text("Generate CV PDF"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label,String heading, TextEditingController controller, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style:  TextStyle(color: MyColors.rawWhiteColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          TextField(
            controller: controller,
            maxLines: maxLines,
            style:  TextStyle(color: MyColors.rawWhiteColor),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xff23262F),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
              hintText: label,
              hintStyle:  TextStyle(color: MyColors.greyColor,height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
