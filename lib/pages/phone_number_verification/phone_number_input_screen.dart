import 'package:auto_route/auto_route.dart';
import 'package:myshop_ui/routes/router.gr.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:myshop_ui/common_widgets/button.dart';

class PhoneNumberInputScreen extends StatefulWidget {
  const PhoneNumberInputScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberInputScreen> createState() => _PhoneNumberInputScreenState();
}

class _PhoneNumberInputScreenState extends State<PhoneNumberInputScreen> {
  List<String> countryList = [
    'belgium.png',
    'brazil.jpeg',
    'iraq.png',
    'russia.jpeg',
    'south_africa.png'
  ];
  late String selectedImage;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    selectedImage = countryList[0];
    super.initState();
  }

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
                  child: Text("What is Your Phone Number?  ",
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child:
                  Text("Please enter your phone number to Verify your account ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          ///button input fields
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey, // set border color
                    width: 1.0), // set border width
                borderRadius: const BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: Row(
                children: [
                  CountryPickerDropdown(
                    initialValue: 'AR',
                    itemBuilder: _buildDropdownItem,
                    itemFilter: (c) =>
                        ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
                    priorityList: [
                      CountryPickerUtils.getCountryByIsoCode('GB'),
                      CountryPickerUtils.getCountryByIsoCode('CN'),
                    ],
                    sortComparator: (Country a, Country b) =>
                        a.isoCode.compareTo(b.isoCode),
                    onValuePicked: (Country country) {
                      print(country.name);
                    },
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Label text',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          CommonButton(
            text: 'Send Verification code',
            onPressed: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                context.router.popAndPush(const OtpScreen());
              },
              child: const Text('skip',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  )))
        ],
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            const SizedBox(
              width: 8.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
}
