import 'package:flutter/material.dart';

import '../custom/BorderIcon.dart';
import '../utils/custom_functions.dart';
import '../utils/widget_functions.dart';

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({Key key, @required this.Item}) : super(key: key);

  final dynamic Item;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(Item['image']),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: BorderIcon(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.favorite_border_outlined),
                ),
              ),
            ],
          ),
          addVerticalSpace(20),
          Row(
            children: [
              Text('${formatCurrency(Item['amount'])}',
                  style: theme.textTheme.headline1),
              addHorizontalSpace(10),
              Text(
                Item['address'],
                style: theme.textTheme.bodyText2,
              ),
            ],
          ),
          addVerticalSpace(10),
          Text(
            "${Item["bedrooms"]} bedrooms / ${Item["bathrooms"]} bathrooms / ${Item["area"]} sqft",
            style: theme.textTheme.headline5,
          )
        ],
      ),
    );
  }
}
