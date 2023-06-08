import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //const MyButton({super.key});

  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final color;
  // ignore: prefer_typing_uninitialized_variables
  final textColor;
  final String buttonText;
  // ignore: prefer_typing_uninitialized_variables
  final buttonTap;

  const MyButton({super.key, this.color, this.textColor, required this.buttonText, this.buttonTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap ,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:Container(
            color: color,
            child: Center(child: Text(buttonText,style: TextStyle(color: textColor, fontSize: 20),),),
          )
        ,),
      ),
    );
  }
}
