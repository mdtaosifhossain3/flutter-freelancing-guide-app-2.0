import 'dart:io';
import 'package:flutter/material.dart';
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
  final TextEditingController contactController = TextEditingController();
  final TextEditingController educationController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();

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
            children: [
              // Profile Image
              if (profileImage != null)
                pw.Center(
                  child: pw.Image(
                    pw.MemoryImage(profileImage!.readAsBytesSync()),
                    height: 100,
                    width: 100,
                  ),
                ),
              pw.SizedBox(height: 16),
              // Name and Contact
              pw.Text(
                nameController.text,
                style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(contactController.text),
              pw.SizedBox(height: 16),
              // Education
              pw.Text(
                "Education",
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(educationController.text),
              pw.SizedBox(height: 16),
              // Experience
              pw.Text(
                "Experience",
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(experienceController.text),
              pw.SizedBox(height: 16),
              // Skills
              pw.Text(
                "Skills",
                style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(skillsController.text),
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
      backgroundColor: const Color(0xff1A1A22),
      appBar: AppBar(
        title: const Text("CV Generator"),
        backgroundColor: const Color(0xff23262F),
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
                  backgroundColor: const Color(0xffB3C7C7),
                  backgroundImage: profileImage != null ? FileImage(profileImage!) : null,
                  child: profileImage == null
                      ? const Icon(Icons.add_a_photo, color: Colors.white)
                      : null,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Name
            _buildInputField("Name", nameController),
            // Contact
            _buildInputField("Contact Information", contactController),
            // Education
            _buildInputField("Education", educationController, maxLines: 3),
            // Experience
            _buildInputField("Experience", experienceController, maxLines: 3),
            // Skills
            _buildInputField("Skills", skillsController, maxLines: 2),
            const SizedBox(height: 20),
            // Generate PDF Button
            Center(
              child: ElevatedButton(
                onPressed: generatePDF,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff8F94FB),
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

  Widget _buildInputField(String label, TextEditingController controller, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          TextField(
            controller: controller,
            maxLines: maxLines,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xff23262F),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
              hintText: "Enter $label",
              hintStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
