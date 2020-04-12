import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.center,
              // caused an error
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    child: Directionality( //caused error
                        textDirection: TextDirection.ltr,
                        child: Icon(
                          Icons.widgets,
                          size: 50,
                          color: Colors.blue,
                        )
                    )
                ),
                Expanded(
                    child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Icon(
                          Icons.widgets,
                          size: 50,
                          color: Colors.red,
                        )
                    )
                ),
              ],
            )));
  }
}
