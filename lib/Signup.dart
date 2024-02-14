
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
                children: [const Text("WELCOME TO WHATSAPP",style: TextStyle(color: Color.fromARGB(255, 30, 184, 35),fontWeight: FontWeight.w900,fontSize: 30),),
           SvgPicture.asset(
              'assets/logo.png', 
              semanticsLabel: 'whatsapp logo',
              height: 200, 
              width: 200, 
            ),
            Padding( padding: const EdgeInsets.all(20.0),
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
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                  prefixIcon: Icon(Icons.phone),
                 )
                
              ),
            
            )

          ),
         ElevatedButton(
  onPressed: () {
    Get.to(() => const otp()); 
  },
  child: const Text("Submit"),
)],
              ),
        ));
  }
}
