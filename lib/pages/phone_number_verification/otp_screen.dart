import 'package:flutter/material.dart';
import 'package:myshop_ui/common_widgets/button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/routes/router.gr.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 50),
                child: Center(
                  child: Text("Verification Code  ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFFeae3ed),
                          fontWeight: FontWeight.bold)),
                ),
              ),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(170)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF433452),
                      // Color(0xFF433452),
                      // bottomContainer,
                      Color(0xFF785693)
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                  ))),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Please enter code sent to ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    )),
              )
            ],
          ),
          ListTile(
            leading: const Text("+94768444933",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            trailing: TextButton(
                onPressed: () {},
                child: const Text('Change Phone Number',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        decoration: TextDecoration.underline))),
          ),
          const SizedBox(
            height: 30,
          ),

          ///otp input fields
          Center(
            child: OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width * 0.7,
              fieldWidth: 30,
              style: const TextStyle(fontSize: 16),
              textFieldAlignment: MainAxisAlignment.center,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {},
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          CommonButton(
            text: 'Continue',
            onPressed: navigate,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: const Text('Resend code',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  )))
        ],
      ),
    );
  }

  void navigate(){
    context.router.popAndPush(const HomeRoute());
  }
}
