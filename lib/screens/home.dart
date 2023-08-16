import 'package:challenge/widgets/button.dart';
import 'package:challenge/widgets/checkbox.dart';
import 'package:challenge/widgets/date_picker.dart';
import 'package:challenge/widgets/drop_down.dart';
import 'package:challenge/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
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
                    height: 15,
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
                          height: 15,
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
                        const SizedBox(height: 10),
                        const Text(
                          "Get a Nike Member Reward every year on your birthday  ",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        FormDropDownField(
                          items: countryOptions,
                          selectedValue: selectedCountry,
                        ),
                        const SizedBox(height: 10),
                        const MyCheckboxFormField(
                            value: false,
                            label:
                                "Sign Up for emails to get updates from Nike on products. offers and your Member benefit"),
                        const SizedBox(height: 10),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text:
                                  'By creating an Account, you agree to Nike\'s ',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 12),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Privacy and Policy',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()),
                                const TextSpan(
                                    text: ' and ',
                                    style: TextStyle(fontSize: 12)),
                                TextSpan(
                                    text: 'Term of Use',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Button(buttonText: "JOIN US"),
                        const SizedBox(
                          height: 12,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text: "Already Member?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " Sign In",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline))
                              ]),
                        )
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
