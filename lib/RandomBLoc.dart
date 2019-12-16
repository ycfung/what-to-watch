import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'code_data.dart';

class RandomBLoC {
  StreamController<String> _controller;
  Random _random;

  RandomBLoC() {
    _controller = StreamController();
    _random = Random();
  }

  Stream<String> get stream => _controller.stream;

  randomMenu(BuildContext context) async {
    var source = new CodeData();
    var data = source.codes;
    for (int i = 0; i < 20; i++) {
      await Future.delayed(new Duration(milliseconds: 25), () {
        return "${data.length == 0 ? "暂无可用" : data[_random.nextInt(data.length)]}";
      }).then((s) {
        _controller.sink.add(s);
      });
    }
  }

  dispose() {
    _controller.close();
  }
}
