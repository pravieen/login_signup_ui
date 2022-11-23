import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Login To Your Account",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.grey[700])),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: const [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            hintText: "Ex : abc@gmail.com",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 139, 136, 136)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "XXXXXX",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 139, 136, 136)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
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
                        height: 60,
                        minWidth: double.infinity,
                        color: const Color(0xff0095FF),
                        onPressed: () {},
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "FORGOT PASSWOARD ?",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have a account?"),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("image/background.png"),
                      fit: BoxFit.fitHeight,
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
