import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.colorC});
  final height;
  final width;
  final Color colorC;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorC),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bgcolor;
  //final double padValue;
  final double buttonHeight;
  final double buttonWidth;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.bgcolor,
      required this.buttonHeight,
      required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(text),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({super.key, required this.text, required this.onPressed, required this.buttonHeight, required this.buttonWidth});

  final String text;
  final VoidCallback onPressed;
  final double buttonHeight;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(onPressed: () {  },
      child: Ink(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff374ABE), Color(0xff64B6FF)          
          ],
          begin: Alignment.centerLeft,
            end: Alignment.centerRight
          ),
          ),
        child: Container(child: Text(text),)),
        
    ));
  }
}

class Custom_Sign_In extends StatelessWidget {
  const Custom_Sign_In({
    super.key, required this.title, required this.button_icon, required this.bgcolor, required this.fgcolor, required this.borderColor, required this.borderWidth,
  });

  final String title;
  final Icon button_icon;
  final Color bgcolor;
  final Color fgcolor; 
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        icon: button_icon,
        label:  Text(title),
        style: ElevatedButton.styleFrom(
            shape: const BeveledRectangleBorder(),
            backgroundColor: bgcolor,
            foregroundColor: fgcolor,
            side: BorderSide(width: borderWidth,color: borderColor)
            ));
  }
}
