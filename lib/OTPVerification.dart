import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Verfication Code',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'We have sent the code verfication to',
                style: TextStyle(fontSize: 13, color: Colors.grey[750]),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  const Text(
                    '+91 895*****89',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('change phone number?'),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()))),
                  SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()))),
                  SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()))),
                  SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()))),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Resend',
                        style: TextStyle(
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Confirm',
                        style: TextStyle(
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
