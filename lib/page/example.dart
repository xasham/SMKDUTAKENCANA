import 'package:flutter/material.dart';

class example extends StatelessWidget {

  // Icon icon;
  List<Widget> onPressed;
  String message;
  Widget titles;
 
  example( this.message, this.titles, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // icon: icon,
      title: titles,
      content: message == null
          ? null
          : Text(
              message,
              textAlign: TextAlign.center,
            ),

      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowButtonSpacing: 8.0,
      actions: onPressed,
    );
  }
}