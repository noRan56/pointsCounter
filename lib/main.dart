import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/presentation_layer/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  pointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<CounterCubit, CounterState>(
          listener: (context, state) {},
          builder: (context, state) {
            return HomeScreen();
          },
        ),
      ),
    );
  }
}
