import 'package:flutter/material.dart';
import 'package:lista_alimentos_equi_app/app/widgets/custom_circular_menu.dart';

SliverAppBar customAppBar(
    BuildContext context) {
  return SliverAppBar(
      leading: customCircularMenu(),
      snap: false,
      pinned: false,
      expandedHeight: 200.0,
      centerTitle: true,
      elevation: 5,
      titleSpacing: 100,
      flexibleSpace: customFlexiveSpaceBar(context));
}

customFlexiveSpaceBar(
    BuildContext context) {
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
            text: "MANUAL FOTOGRÁFICO\n",
          ),
          TextSpan(
            text: "De porções alimentares da lista de substituições de alimentos equivalentes",
          ),
         ],
      ),
    ),
    background: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/img_app_bar.jpg",
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
