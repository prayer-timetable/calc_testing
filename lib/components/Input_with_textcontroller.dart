// import dart and flutter resources
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';

// import local package resources

// mobx
// import 'package:calc_testing/store/data.dart';

class Input extends StatefulWidget {
  Input({Key key, this.title, this.lite}) : super(key: key);

  final String title;
  final bool lite;

  // Input({this.title, this.lite,});

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  // widget.title;
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    // double vh = MediaQuery.of(context).size.height / 100;

    return Observer(
      builder: (_) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // SizedBox(
            //   height: 24.0,
            // ),
            TextField(
              maxLength: 10,
              decoration: new InputDecoration(labelText: "Enter your latitude"),
              keyboardType: TextInputType.number,
              inputFormatters: [
                WhitelistingTextInputFormatter.digitsOnly,
                // CustomRangeTextInputFormatter(),
              ], // Only numbers can be entered
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
            ),
            TextField(
              controller: myController,
            ),
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
    );
  }
}

class CustomRangeTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text == '')
      return TextEditingValue();
    else if (int.parse(newValue.text) < 1)
      return TextEditingValue().copyWith(text: '1');

    return int.parse(newValue.text) > 20
        ? TextEditingValue().copyWith(text: '20')
        : newValue;
  }
}
