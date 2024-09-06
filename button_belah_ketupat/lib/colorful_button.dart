import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorfullButton extends StatefulWidget {
  Color? mainColor, secondColor;
  IconData iconData;

  @override
  State<ColorfullButton> createState() =>
      _ColorfulButtonState(mainColor, secondColor, iconData);

  ColorfullButton(this.mainColor, this.secondColor, this.iconData);
}

class _ColorfulButtonState extends State<ColorfullButton> {
  Color? mainColor, secondColor;
  bool isPressed = false;
  IconData iconData;
  _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Transform.rotate(
        angle: pi / 4,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: (isPressed) ? 5 : 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: (isPressed) ? secondColor : mainColor,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        Icons.adb,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
