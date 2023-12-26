import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CounterController extends GetxController {
  int _count = 0;
  int get count => _count;
  bool isLoading = false;
  increase() async {
    if(isLoading) {
      return;
    }
    else {
      isLoading = true;
      update();
    }
    await Future.delayed(Duration(seconds: 1));
    _count += 1;
    isLoading = false;
    update();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CounterController(),
      builder: (CounterController controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                controller.isLoading ? const CircularProgressIndicator() : Text(
                  '${controller.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: controller.isLoading ? null : controller.increase,
            elevation: controller.isLoading ? 0 : null,
            backgroundColor: controller.isLoading ? Colors.grey : null,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      }
    );
  }
}
