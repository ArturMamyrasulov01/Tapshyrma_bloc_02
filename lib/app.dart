import 'package:flutter/material.dart';

import 'counter/view/counter_view.dart';

class CounterApp02 extends MaterialApp {
  const CounterApp02({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const CounterView(),
        );
}
