import 'package:flutter/material.dart';
import 'package:tapshyma_bloc_02/counter/view/counter_page.dart';

class CounterApp02 extends MaterialApp {
  const CounterApp02({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const CounterPage(),
        );
}
