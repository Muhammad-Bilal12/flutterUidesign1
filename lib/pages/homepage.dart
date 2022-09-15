import 'package:flutter/material.dart';
import 'package:rps_ui_e1/data_model/sample_data.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'package:rps_ui_e1/utils/custom_functions.dart';
import 'package:rps_ui_e1/utils/widget_functions.dart';

import '../components_widget/ChoiceOption.dart';
import '../components_widget/SelectBtn.dart';
import '../components_widget/border_icon.dart';
import '../components_widget/realEstateItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final EdgeInsets sidePadding = EdgeInsets.symmetric(horizontal: 25);
    final ThemeData themedata = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BorderIcon(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.menu),
                        ),
                        BorderIcon(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.settings_outlined),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      'City',
                      style: themedata.textTheme.bodyText2,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      'Sans Fransico',
                      style: themedata.textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Divider(color: COLOR_GREY),
                  ),
                  addVerticalSpace(padding),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        "<\$220,000",
                        "For Sale",
                        "3-4 Beds",
                        ">1000 sqft"
                      ].map((filter) => ChoiceOptipon(text: filter)).toList(),
                    ),
                  ),
                  addVerticalSpace(padding),
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: RE_DATA.length,
                          itemBuilder: (BuildContext context, int index) {
                            return RealEstateItem(Item: RE_DATA[index]);
                          }),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: SelectBtn(
                    icon: Icons.map_rounded,
                    text: 'Map View',
                    width: size.width * 0.35,
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
