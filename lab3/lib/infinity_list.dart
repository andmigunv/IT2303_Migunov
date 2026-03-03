import 'package:flutter/material.dart';

class InfinityList extends StatefulWidget {
  const InfinityList({super.key});

  @override
  State<InfinityList> createState() => _InfinityListState();
}

class _InfinityListState extends State<InfinityList> {
  final List<String> _items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Бесконечный список строк'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return const Divider(height: 1);
          }

          final index = i ~/ 2;

          if (index >= _items.length) {
            _items.addAll([
              'Строка $index',
              'Строка ${index + 1}',
              'Строка ${index + 2}',
            ]);
          }

          return ListTile(
            title: Text(_items[index]),
          );
        },
      ),
    );
  }
}

