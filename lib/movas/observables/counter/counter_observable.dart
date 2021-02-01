import 'dart:convert';

import 'package:movas_counter_app/movas/observables/counter/counter_entity.dart';

class CounterO {
  int counter;

  CounterO({this.counter});

  factory CounterO.fromE(CounterE counterE) =>
      CounterO(counter: counterE.counter);

  CounterO copyWith({
    int counter,
  }) {
    return CounterO(
      counter: counter ?? this.counter,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'counter': counter,
    };
  }

  factory CounterO.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CounterO(
      counter: map['counter'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterO.fromJson(String source) =>
      CounterO.fromMap(json.decode(source));

  @override
  String toString() => 'CounterO(counter: $counter)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterO && o.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}
