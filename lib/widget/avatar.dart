import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String DisplayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double heigt;
  Avatar({
    required this.DisplayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.width = 50,
    this.heigt = 50,
  });

  @override
  Widget build(BuildContext context) {
    // Widget statusIndicator;
    // if (displayStatus == true) {
    //   statusIndicator = Positioned(
    //     child: Container(
    //       width: 20,
    //       height: 20,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           color: Colors.white,
    //           width: 2,
    //         ),
    //       ),
    //     ),
    //     bottom: 1,
    //     right: 4,
    //   );
    // } else {
    //   statusIndicator = SizedBox();
    // }
// ANOTHER WAY OF DOING IT

    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(
                    color: Colors.blue,
                    width: 3,
                  )
                : Border()),
        padding: EdgeInsets.only(left: 5, right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            DisplayImage,
            width: width,
            height: heigt,
            fit: BoxFit.cover,
          ),
        ),
      ),
      displayStatus == true
          ? Positioned(
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
              bottom: 1,
              right: 4,
            )
          : SizedBox()
    ]);
  }
}
