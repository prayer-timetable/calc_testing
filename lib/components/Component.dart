// import dart and flutter resources
import 'package:flutter/material.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';

// import local package resources

// mobx
// import 'package:calc_testing/store/mobx/prayer.dart';

class Component extends StatefulWidget {
  Component({Key key, this.title, this.lite}) : super(key: key);

  final String title;
  final bool lite;

  // Component({this.title, this.lite,});

  @override
  _ComponentState createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  // widget.title;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double vh = MediaQuery.of(context).size.height / 100;

    return Observer(
      builder: (_) => FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // SizedBox(
              //   height: 24.0,
              // ),
              Text(
                'Default ${widget.title ?? ''}',
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .apply(color: Colors.red, fontSizeDelta: 0.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
