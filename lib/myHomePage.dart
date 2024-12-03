import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GetX"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Center(child: Obx(() {return Text(controller.counter.toString(),style: TextStyle(fontSize: 30),);})),
        floatingActionButton:
            FloatingActionButton(backgroundColor:Colors.yellow,child: Icon(Icons.add), onPressed: () {
              controller.increment();
            }),
      ),
    );
  }
}
