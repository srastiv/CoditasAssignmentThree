import 'package:coditas_assignment_3_todo/list_elements.dart';
import 'package:coditas_assignment_3_todo/provider/task_provider.dart';
import 'package:coditas_assignment_3_todo/widgets/list_tile_element.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
import 'list_elements.dart';

void main() {
  runApp(MyApp());
}

int count = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    return MaterialApp(
      home: ChangeNotifierProvider<TaskProvider>(
          create: (_) => TaskProvider(),
          builder: (context, child) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: false,
                backgroundColor: const Color.fromARGB(255, 0, 191, 252),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Text('To Do List'),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text('Done:'),
                          Text(
                            Provider.of<TaskProvider>(context, listen: true)
                                .count
                                .toString(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              body: ListView(
                children: taskList.map(
                  (element) {
                    return Container(
                      decoration: kListTileBorder,
                      height: 71,
                      child: GestureDetector(
                        onTap: (() {
                          if (isChecked = true) {
                            const TextStyle(
                                decoration: TextDecoration.lineThrough);
                            //count++;
                            //element.isTaskCompleted ? count++ : null;
                          }
                        }),
                        child: ListTileElement(element),
                      ),
                    );
                  },
                ).toList(),
              ),
            );
          }),
    );
  }
}
