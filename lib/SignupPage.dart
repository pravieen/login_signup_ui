import 'package:flutter/material.dart';
import 'package:login_signup_ui/OTPVerification.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Create an account",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: const [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "User Name",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            hintText: "Ex : abc",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 139, 136, 136)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Mobile Number",
                            hintText: "EX : +91 8936******",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 139, 136, 136)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // TextField(
                        //   obscureText: true,
                        //   decoration: InputDecoration(
                        //     labelText: "Enter Otp",
                        //     hintText: "XXXX",
                        //     labelStyle: TextStyle(
                        //         //fontWeight: FontWeight.bold,
                        //         color: Colors.black),
                        //     hintStyle: TextStyle(
                        //         //fontWeight: FontWeight.bold,
                        //         color: Color.fromARGB(255, 139, 136, 136)),
                        //     //border: OutlineInputBorder(),
                        //   ),
                        // ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: const Border(
                          top: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: MaterialButton(
                        height: 70,
                        minWidth: double.infinity,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OTPVerification()));
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)),
                        child: const Text(
                          "Request OTP",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
