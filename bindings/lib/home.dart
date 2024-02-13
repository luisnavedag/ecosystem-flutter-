import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'count_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindings Demo'),
      ),
      body: Center(
        child: Obx(
          () => CountText(
            count: Get.find<Controller>().count.value.toString(),
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<Controller>().incrementCount(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
