import 'package:flutter/material.dart';
//import 'package:hello_world_app/presentation/widgets/app_bar.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key}); 

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                //appBar: MyAppBarCustom(),
                appBar: AppBar(

                  title: const Text('Counter Screen'),
                  centerTitle: true,
                  backgroundColor: Colors.green,
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),),
                      const Text('Clicks', style: TextStyle(fontSize: 50))
                    ],
                  ),
                ),
                floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // Restar 1 al contador
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // Sumar 1 al contador
                clickCounter--;
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      );
  }
}