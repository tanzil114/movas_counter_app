import 'package:flutter/material.dart';
import 'package:movas_counter_app/movas/actions/counter/counter_actions.dart';
import 'package:movas_counter_app/movas/observables/counter/counter_observable.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterO>(
              builder: (context, counterO, _) => Text(
                '${counterO?.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => CounterA.of(context).incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
