import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lista_alimentos_equi_app/app/widgets/custom_app_bar.dart';
import 'package:lista_alimentos_equi_app/app/widgets/lista_categorias.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                pinned: true,
                snap: true,
                floating: true,
                expandedHeight: 160.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("MANUAL FOTOGRÁFICO"),
                  background: Image.asset("assets/img35.jpg"),
                ),),
            SliverGrid(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return preparaCardCategorias(index);
                },
                childCount: categorias.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
