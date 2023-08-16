import 'package:challenge/widgets/date_picker.dart';
import 'package:challenge/widgets/drop_down.dart';
import 'package:challenge/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DropdownMenuItem<String>> countryOptions = [
    const DropdownMenuItem(value: 'UK', child: Text('United Kingdom')),
    const DropdownMenuItem(value: 'US', child: Text('United State')),
    const DropdownMenuItem(value: 'RWANDA', child: Text('Rwanda')),
  ];
  String selectedCountry = 'UK';

  void selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1800),
      lastDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/nike.png',
                          height: 80,
                          width: 80,
                        ),
                        Text(
                          "BECOME A NIKE MEMBER",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Create your Member Profile and get first access to the very best of Nike Products, inspiration and community.",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const MyTextField(
                            hintText: "Email Address", obsecureText: false),
                        const SizedBox(height: 10),
                        const MyTextField(
                            hintText: "Password", obsecureText: true),
                        const SizedBox(height: 10),
                        const MyTextField(
                            hintText: "First Name", obsecureText: false),
                        const SizedBox(height: 10),
                        const MyTextField(
                            hintText: "Last Name", obsecureText: false),
                        const SizedBox(height: 10),
                        FormDatePicker(
                            hintText: "Date of Birth",
                            obsecureText: false,
                            onTap: selectDate),
                        const SizedBox(height: 20),
                        const Text(
                          "Get a Nike Member Reward every year on your birthday  ",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 6),
                        FormDropDownField(
                            items: countryOptions,
                            selectedValue: selectedCountry)
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
