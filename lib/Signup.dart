import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:whatsappclone/otp.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId: 'AIzaSyD1llVCIGUQgHO7G9aom5BNWNpI0rqNMFU.apps.googleusercontent.com',
  );

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
     
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

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
                fontSize: 30,
              ),
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
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email id',
                    hintText: 'Enter your Email id',
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                  ),
                ),
              ),
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
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 30, 184, 35),
              ),
              onPressed: () async {
                try {
                  
                  await signInWithGoogle();
                 Get.to(() => const otp());
                } catch (e) {
                  print('Error signing in: $e');
                }
              },
              child: const Text("SIGN IN WITH GOOGLE",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
