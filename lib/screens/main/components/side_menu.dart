import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portpolio/Constant.dart';
import 'package:my_portpolio/screens/main/components/Skills.dart';
import 'package:my_portpolio/screens/main/components/codin.dart';
import 'area_info_text.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultpadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Gujarat",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Suart",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "23",
                    ),
                    Skills(),
                    SizedBox(height: defaultpadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultpadding / 1.9),
                    //now we need animated it
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: animated_circular_progressindicator(
                    //         percentage: 0.8,
                    //         label: "Flutter",
                    //       ),
                    //     ),SizedBox(width: defaultpadding,),
                    //     Expanded(
                    //       child: animated_circular_progressindicator(
                    //         percentage: 0.6,
                    //         label: "C+++",
                    //       ),
                    //     ),SizedBox(width: defaultpadding,),
                    //     Expanded(
                    //       child: animated_circular_progressindicator(
                    //         percentage: 0.55,
                    //         label: "C",
                    //       ),
                    //     )
                    //   ],
                    // ),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultpadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultpadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class animated_circular_progressindicator extends StatelessWidget {
  const animated_circular_progressindicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                    child: Text(
                  (value * 100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle1,
                )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultpadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
