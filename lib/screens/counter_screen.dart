import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    const tamanoFuente = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 15,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Clicks Counter',
              style: tamanoFuente,
            ),
            Text(
              '$counter',
              style: tamanoFuente,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FloatingActionButton(
          child: Icon(Icons.exposure_minus_1),
          onPressed: null,
        ),
        FloatingActionButton(
          child: Icon(Icons.restart_alt),
          onPressed: null,
        ),
        FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: null,
        ),
      ],
    );
  }
}
