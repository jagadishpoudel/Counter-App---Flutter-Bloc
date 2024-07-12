import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App - Bloc"),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade800,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).decrement();
              },
              backgroundColor: Colors.cyan,
              child: const Icon(Icons.remove),
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.number.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                );
              },
            ),
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).increment();
              },
              backgroundColor: Colors.cyan,
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
