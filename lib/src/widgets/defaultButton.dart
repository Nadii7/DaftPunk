import 'package:daftpunk/src/core/constants.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color, textColor;
  final IconData icon;
  final double height, radius, fontSize;
  final FontWeight fontWeight;

  const DefaultButton({
    Key key,
    @required this.onPress,
    @required this.text,
    this.icon,
    this.height,
    this.radius,
    this.color,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: textColor ?? white,
              fontSize: fontSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
          icon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    icon,
                    color: white,
                    size: 20,
                  ),
                )
              : SizedBox(),
        ],
      ),
      height: height ?? 50,
      color: color ?? purple,
      onPressed: onPress,
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 25),
      ),
    );
  }
}
