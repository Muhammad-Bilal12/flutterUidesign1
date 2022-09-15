import 'package:flutter/material.dart';
import 'package:rps_ui_e1/utils/constants.dart';

class BorderIcon extends StatelessWidget {
  const BorderIcon({
    Key key,
    this.height,
    this.width,
    this.padding,
    @required this.child,
  }) : super(key: key);
  final double height, width;
  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding ?? EdgeInsets.all(8), //?? Null check Condition
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2, color: COLOR_GREY.withAlpha(40)),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
