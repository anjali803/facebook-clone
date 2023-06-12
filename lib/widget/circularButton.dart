import 'package:flutter/material.dart';
// import 'package:facebook/widget/appBarButton.dart';

class circularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color IconColor;

  circularButton(
      {required this.buttonIcon,
      required this.buttonAction,
      this.IconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 246, 232, 232),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: IconColor,
          size: 25,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
