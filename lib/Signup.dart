import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/otp.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text(
            "WELCOME TO WHATSAPP",
            style: TextStyle(
                color: Color.fromARGB(255, 30, 184, 35),
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
          SvgPicture.asset(
            'assets/logo.png',
            semanticsLabel: 'whatsapp logo',
            height: 200,
            width: 200,
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(),
                ),
                child: TextFormField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Email id',
                      hintText: 'Enter your Email id',
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                    )),
              )),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(),
                ),
                child: TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: ' Password',
                      hintText: 'Enter your Password',
                      prefixIcon: Icon(Icons.password_outlined),
                    )),
              )),
         ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: const Color.fromARGB(255, 30, 184, 35),
  ),
  onPressed: () {
    Get.to(() => const otp());
  },
  child: const Text("Submit"),
)

        ],
      ),
    ));
  }
}
