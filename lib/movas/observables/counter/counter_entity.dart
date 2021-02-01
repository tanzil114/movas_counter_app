import 'dart:convert';

class CounterE {
  int counter;

  CounterE({
    this.counter = 0,
  });

  CounterE copyWith({
    int counter,
  }) {
    return CounterE(
      counter: counter ?? this.counter,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'counter': counter,
    };
  }

  factory CounterE.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CounterE(
      counter: map['counter'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterE.fromJson(String source) =>
      CounterE.fromMap(json.decode(source));

  @override
  String toString() => 'CounterE(counter: $counter)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterE && o.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}
