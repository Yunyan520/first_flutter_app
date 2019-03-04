import 'package:flutter/material.dart';
import 'package:first_flutter_app/ColorsUntils.dart';
class MySecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  _MySecondPageState();
  }
}
class _MySecondPageState extends State<MySecondPage> {

  double _expandedHeight;
  double opacity = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final double _availableExpandHeight = 58;
    _expandedHeight = _availableExpandHeight + kToolbarHeight;
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: ColorsUntils.bg_color_071935,
            expandedHeight: _availableExpandHeight,
            title: Container(
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image.asset(
                      "images/coin_default_image.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
