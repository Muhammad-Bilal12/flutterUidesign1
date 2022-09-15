import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rps_ui_e1/components_widget/SelectBtn.dart';
import 'package:rps_ui_e1/data_model/sample_data.dart';
import 'package:rps_ui_e1/utils/custom_functions.dart';
import 'package:rps_ui_e1/utils/widget_functions.dart';

import '../components_widget/border_icon.dart';
import '../components_widget/infoTitle.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final EdgeInsets sidepadding = EdgeInsets.symmetric(horizontal: 25);
    final ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage(RE_DATA[0]['image']),
                        ),
                        Positioned(
                          top: padding,
                          width: size.width,
                          child: Padding(
                            padding: sidepadding,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BorderIcon(child: Icon(Icons.arrow_back)),
                                BorderIcon(child: Icon(Icons.favorite_border)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidepadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${formatCurrency(RE_DATA[0]['amount'])}',
                                  style: theme.textTheme.headline1),
                              Text('${RE_DATA[0]['address']}',
                                  style: theme.textTheme.bodyText2),
                            ],
                          ),
                          BorderIcon(
                            height: 50,
                            child: Text('20 Hours Ago',
                                style: theme.textTheme.headline5),
                          )
                        ],
                      ),
                    ),
                    addVerticalSpace(15),
                    Padding(
                      padding: sidepadding,
                      child: Text("House Information",
                          style: theme.textTheme.headline4),
                    ),
                    addVerticalSpace(15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InfoTitle(content: 'Square Foot', title: '1416'),
                          InfoTitle(content: 'Bedrooms', title: '4'),
                          InfoTitle(content: 'Bathrooms', title: '2'),
                          InfoTitle(content: 'Garage', title: '1'),
                          InfoTitle(content: 'RestRoom', title: '1'),
                          InfoTitle(content: 'Floor', title: '2'),
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidepadding,
                      child: Text(RE_DATA[0]['description'],
                          textAlign: TextAlign.justify,
                          style: theme.textTheme.bodyText2),
                    ),
                    addVerticalSpace(padding),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectBtn(
                          text: 'Message',
                          icon: Icons.message_outlined,
                          width: size.width * 0.30),
                      addHorizontalSpace(padding),
                      SelectBtn(
                          text: 'Call',
                          icon: Icons.call,
                          width: size.width * 0.30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
