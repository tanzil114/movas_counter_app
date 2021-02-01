import 'package:flutter/material.dart';
import 'package:movas/provider/provider.dart';
import 'package:movas_counter_app/movas/stores/counter/counter_store.dart';

class CounterA {
  CounterStore counterStore;
  CounterA(this.counterStore);

  Future<void> incrementCounter() {
    return counterStore.incrementCounter();
  }

  factory CounterA.of(BuildContext context) =>
      CounterA(StaticProvider.of(context));
}
