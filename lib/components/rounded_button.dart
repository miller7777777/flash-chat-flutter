import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Function buttonPressed;
  // const RoundedButton({
  //   Key key,
  // }) : super(key: key);

  const RoundedButton({this.buttonColor, this.buttonText, this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        // color: Colors.lightBlueAccent,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: buttonPressed,
          // onPressed: () {
          //   Navigator.pushNamed(context, LoginScreen.id);
          // },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            // 'Log In',
            buttonText,
          ),
        ),
      ),
    );
  }
}
