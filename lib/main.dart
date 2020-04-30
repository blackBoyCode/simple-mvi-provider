import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplemviprovider/ChangeNumber.dart';

///provider need a create
void main() => runApp(
      //add the provider type
      ChangeNotifierProvider(
        create: (_) => ChangeNumber(), // define the class
        child: MyApp(), //the child as the app
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePageState(),
    );
  }
}

//class MyHomePage extends StatelessWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//
//
//  final String title;
//
////  @override
////  _MyHomePageState createState() => _MyHomePageState();
//
//}

//change this to Stateless
class _MyHomePageState extends StatelessWidget {
//  int _counter = 0;
//
//  void _incrementCounter() {
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'generate a random number by pressing button:',
            ),
            Consumer<ChangeNumber>(
              ///wrap our text widgets with a consumer of type changeNumber
              builder: (_, changeVariable, __) => Text(
                //'$_counter',
                '${changeVariable.a}',

                /// get our value from ChangeValue variable
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>

            ///call our method from our class here,
            Provider.of<ChangeNumber>(context, listen: false).setRandomNumber(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
