import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/widget_functions.dart';

class SelectBtn extends StatelessWidget {
  const SelectBtn({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.width,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: MaterialButton(
        splashColor: COLOR_WHITE.withAlpha(55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        color: COLOR_DARK_BLUE,
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: COLOR_WHITE,
            ),
            addHorizontalSpace(10),
            Text(
              text,
              style: TextStyle(color: COLOR_WHITE),
            ),
          ],
        ),
      ),
    );
  }
}
