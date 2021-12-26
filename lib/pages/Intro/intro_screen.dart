import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myshop_ui/pages/Intro/colors.dart';
import 'package:myshop_ui/routes/router.gr.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    imageBackground.withOpacity(0.7), BlendMode.darken),
                image: const AssetImage("assets/intro_image.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.43,
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(170)),
                    color: upperContainer.withOpacity(0.6)),
              ),
            ],
          ),
        ),

        ///text part
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFFa0794a),
                            fontWeight: FontWeight.bold),
                      ),
                      Text("Shop",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFeae3ed),
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Want a superweapon to ignite your customer’s interest in a product? It’s right under your nose: Take your product’s unique features and turn them into benefits.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFeae3ed),
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.router.push(const PhoneNumberInputScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: upperContainer.withOpacity(0.6)),
                        ),
                        primary: startedButtonColor.withOpacity(0.9)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: Text('Get Started',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFeae3ed),
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  )
                ],
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
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
                  )),
            )),
      ],
    ));
  }
}
