import 'package:flutter/material.dart';

class ColumnsScreen extends StatefulWidget {
  ColumnsScreen({super.key});

  @override
  _ColumnsScreenState createState() => _ColumnsScreenState();
}

class _ColumnsScreenState extends State<ColumnsScreen> {
  List<Draggable<Text>> columnValues1 = [
    Draggable<Text>(
        data: Text("Test 1"), feedback: Text("Test 1"), child: Text("Test 1")),
    Draggable<Text>(
        data: Text("Test 2"), feedback: Text("Test 2"), child: Text("Test 2")),
  ];

  List<Draggable<Text>> columnValues2 = [
    Draggable<Text>(
        data: Text("Test 3"), feedback: Text("Test 3"), child: Text("Test 3")),
    Draggable<Text>(
        data: Text("Test 4"), feedback: Text("Test 4"), child: Text("Test 4")),
  ];

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
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: columnValues1,
            );
          },
          onAcceptWithDetails: (data) {
            setState(() {
              columnValues1
                  .add(Draggable(feedback: data.data, child: data.data));
            });
          },
          onLeave: (data) {
            setState(() {
              columnValues1.remove(Draggable(feedback: data!, child: data));
            });
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: columnValues2,
            );
          },
          onAcceptWithDetails: (data) {
            setState(() {
              columnValues2
                  .add(Draggable(feedback: data.data, child: data.data));
            });
          },
          onLeave: (data) {
            setState(() {
              columnValues2.remove(Draggable(feedback: data!, child: data));
            });
          },
        )
      ],
    ));
  }
}
