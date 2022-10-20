import 'package:bloc_learning/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';

class MyBloC extends StatelessWidget {
  const MyBloC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<CounterBloc>(context);
    final wa = context.watch<CounterBloc>();
    final re = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is ${wa.state}",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      re.add(Increment());
                      //
                    },
                    child: const Text("Increment")),
                ElevatedButton(
                    onPressed: () {
                      re.add(Decrement());
                    },
                    child: const Text("Decrement"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
