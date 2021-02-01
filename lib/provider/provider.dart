import 'package:movas/provider/provider.dart';
import 'package:movas_counter_app/movas/observables/counter/counter_observable.dart';
import 'package:movas_counter_app/movas/stores/counter/counter_store.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  StoreProvider<CounterStore, CounterO>(
    storeBuilder: (context) => CounterStore(),
  ),
];
