import 'dart:math';
import 'package:flutter/material.dart';

class InfinityMathList extends StatefulWidget {
  const InfinityMathList({super.key});

  @override
  State<InfinityMathList> createState() => _InfinityMathListState();
}

class _InfinityMathListState extends State<InfinityMathList> {
  final List<int> _values = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2^n'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return const Divider(height: 1);
          }

          final index = i ~/ 2;

          if (index >= _values.length) {
            _values.addAll([
              pow(2, index).toInt(),
              pow(2, index + 1).toInt(),
              pow(2, index + 2).toInt(),
            ]);
          }

          final value = _values[index];

          return ListTile(
            title: Text('2^$index = $value'),
          );
        },
      ),
    );
  }
}

