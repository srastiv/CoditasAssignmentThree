import 'package:flutter/material.dart';

const kListTileBorder = BoxDecoration(
  border: Border(
    left: BorderSide(width: 16.0, color: Colors.white),
    right: BorderSide(width: 16.0, color: Colors.white),
    top: BorderSide(width: 3.0, color: Colors.white),
  ),
);

const kTileColor = const Color.fromARGB(255, 249, 247, 247);
const kListTrailing =
    const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20);

// Text(tasks[index].taskName,
// style: TextStyle(decoration:
// TextDecoration.lineThrough),
// );