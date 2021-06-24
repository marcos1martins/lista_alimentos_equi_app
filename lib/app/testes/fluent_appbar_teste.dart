import 'package:fluent_appbar/fluent_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FluentAppBarTeste extends StatefulWidget {
  const FluentAppBarTeste({Key? key}) : super(key: key);

  @override
  _FluentAppBarTesteState createState() => _FluentAppBarTesteState();
}

class _FluentAppBarTesteState extends State<FluentAppBarTeste> {
  final ScrollController scrollController = ScrollController();
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C'
  ];
  final List<int> colorCodes = <int>[
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        listDemo(),
        FluentAppBar(scrollController: scrollController, titleText: 'Home', )
      ]),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  Widget listDemo() {
    return FutureBuilder<bool>(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        } else {
          return ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.only(
              top: AppBar().preferredSize.height +
                  MediaQuery.of(context).padding.top +
                  24,
              bottom: 62 + MediaQuery.of(context).padding.bottom,
            ),
            itemCount: entries.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              //widget.animationController.forward();
              return Container(
                height: 80,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            },
          );
        }
      },
    );
  }
}
