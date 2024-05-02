import 'package:flutter/material.dart';

class ColumnsScreen extends StatelessWidget {
  const ColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DragTarget<Text>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Draggable<Text>(
                    data: Text("Test 1"),
                    feedback: Text("Test 1"),
                    child: Text("Test 1")),
                Draggable<Text>(
                    data: Text("Test 2"),
                    feedback: Text("Test 2"),
                    child: Text("Test 2")),
              ],
            );
          },
        ),
        const SizedBox(
          width: 20,
        ),
        DragTarget<Text>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Draggable<Text>(
                    data: Text("Test 3"),
                    feedback: Text("Test 3"),
                    child: Text("Test 3")),
                Draggable<Text>(
                    data: Text("Test 4"),
                    feedback: Text("Test 4"),
                    child: Text("Test 4")),
              ],
            );
          },
        )
      ],
    ));
  }
}
