import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ChoiceOptipon extends StatelessWidget {
  const ChoiceOptipon({Key key, this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: COLOR_GREY.withAlpha(25),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
