import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadiusDirectional.circular(16),
      ),
      child: Center(
        child: Text("add", style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
    );
  }
}
