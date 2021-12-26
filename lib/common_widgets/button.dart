import 'package:flutter/material.dart';
import 'package:myshop_ui/pages/Intro/colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.onPressed, this.text}) : super(key: key);
  final void Function() onPressed;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width*0.9,60),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: startedButtonColor.withOpacity(0.9)),
          ),
          primary: startedButtonColor.withOpacity(0.9)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Text(text ?? '',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
