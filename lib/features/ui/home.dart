import 'package:cubit_counter_app/features/cubit/counter_cubit.dart';
import 'package:cubit_counter_app/features/cubit/counter_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterCubitStateModel>(
          builder: (context, state) {
            var _cubit = context.read<CounterCubit>();
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    _cubit.decreament(state.clickCount);
                  },
                  child: Icon(
                    Icons.remove,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    state.clickCount.toString(),
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    _cubit.increament(state.clickCount);
                    _cubit.increament(state.clickCount);
                    _cubit.increament(state.clickCount);
                    _cubit.increament(state.clickCount);
                  },
                  child: Icon(Icons.add),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
