import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyma_bloc_02/counter/view/counter_new_page.dart';

import '../cubit/counter_cubit.dart';

class DataContainerWidget extends StatelessWidget {
  const DataContainerWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CounterNewPage(
                state: state,
                size: size,
              ),
            ),
          ),
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
              )),
        );
      },
    );
  }
}
