import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

SliverAppBar customAppBar(
    BuildContext context, String subtitle, String description) {
  return SliverAppBar(
      leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.infoCircle),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }),
      snap: false,
      pinned: false,
      expandedHeight: 200.0,
      centerTitle: true,
      elevation: 5,
      titleSpacing: 100,
      flexibleSpace: customFlexiveSpaceBar(context, subtitle, description));
}

customFlexiveSpaceBar(
    BuildContext context, String subtitle, String description) {
  var tt = Theme.of(context).textTheme;
  return FlexibleSpaceBar(
    stretchModes: <StretchMode>[
      StretchMode.zoomBackground,
      StretchMode.blurBackground,
      StretchMode.fadeTitle,
    ],
    centerTitle: true,
    title: RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        children: [
          TextSpan(
            text: "   Economia Agora\n\n\n",
            style: tt.headline6.copyWith(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          TextSpan(
              text: subtitle,
              style: tt.headline6.copyWith(fontSize: 16, color: Colors.white)),
          TextSpan(
              text: '\n$description',
              style: tt.headline6.copyWith(fontSize: 12)),
        ],
      ),
    ),
    background: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/imgappbar.jpg",
          fit: BoxFit.fill,
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.5),
              end: Alignment(0.0, 0.0),
              colors: <Color>[
                Color(0x60000000),
                Color(0x00000000),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
