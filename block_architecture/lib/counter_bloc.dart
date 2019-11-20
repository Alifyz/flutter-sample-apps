import 'dart:async';
import 'package:block_architecture/counter_events.dart';

class CounterBloc {
  int _counter = 0;

  //Data Sink and Streams
  final _counterController = StreamController<int>();
  StreamSink<int> get _intCounter => _counterController.sink;
  Stream<int> get counter => _counterController.stream;

  //Input Sink - UI Layer
  final _counterEventController = StreamController<CounterEvents>();
  Sink<CounterEvents> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    _counterEventController.stream.listen((event) {
      if (event is IncrementEvent) {
        _counter++;
      } else {
        _counter--;
      }
      _intCounter.add(_counter);
    });
  }

  void dispose() {
    _counterController.close();
    _counterEventController.close();
  }
}
