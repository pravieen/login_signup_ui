import 'package:flutter/material.dart';
import 'package:login_signup_ui/Loginpage.dart';
import 'package:login_signup_ui/SignupPage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text(
                    'Welcome',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'To',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'R Transport',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text('Login / Signup Page',
                      style: TextStyle(fontSize: 15, color: Colors.grey[700])),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/welcome.png'))),
              ),
              Column(children: <Widget>[
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text("Login",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()));
                  },
                  color: Colors.black, // Color(0xff0095FF),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text("Sign",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white)),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
