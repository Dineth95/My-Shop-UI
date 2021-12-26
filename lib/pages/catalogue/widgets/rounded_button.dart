import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({Key? key, required this.title, required this.function})
      : super(key: key);

  final String title;
  final Function function;

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
          child: Text(widget.title, style: const TextStyle(fontSize: 13)),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF785693)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: const BorderSide(color: Color(0xFF785693))))),
          onPressed: widget.function()),
    );
  }
}
