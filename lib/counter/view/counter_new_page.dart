import 'package:flutter/material.dart';

class CounterNewPage extends StatelessWidget {
  final Size size;
  final int state;

  const CounterNewPage({
    required this.size,
    required this.state,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Тапшырма 02",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
                margin: EdgeInsets.only(bottom: size.height * 0.07),
                alignment: Alignment.center,
                height: size.height * 0.07,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // ignore: use_full_hex_values_for_flutter_colors
                  color: const Color(0xffbdbdbd0),
                ),
                child: Text(
                  "сан: $state",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
      ),
    );
  }
}
