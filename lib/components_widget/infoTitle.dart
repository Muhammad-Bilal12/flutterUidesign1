import 'package:flutter/material.dart';

import '../custom/BorderIcon.dart';
import '../utils/widget_functions.dart';

class InfoTitle extends StatelessWidget {
  InfoTitle({
    Key key,
    @required this.content,
    @required this.title,
  }) : super(key: key);

  final String content;
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double titlesize = size.width * 0.15;
    final ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          BorderIcon(
            height: titlesize,
            width: titlesize,
            child: Text(
              title,
              style: theme.textTheme.headline3,
            ),
          ),
          addVerticalSpace(15),
          Text(
            content,
            style: theme.textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
