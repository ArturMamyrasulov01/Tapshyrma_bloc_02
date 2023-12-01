import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../widgets/data_container_widget.dart';
import '../widgets/elevated_button_widget.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DataContainerWidget(size: size),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtonWidget(
                  size: size,
                  icon: Icons.remove,
                  onPressed: () {
                    context.read<CounterCubit>().decriment();
                  },
                ),
                SizedBox(
                  width: size.width * 0.08,
                ),
                ElevatedButtonWidget(
                  size: size,
                  icon: Icons.add,
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
