import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  const SimpleList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Первая строка',
      'Вторая строка',
      'Третья строка',
      'Четвёртая строка',
      'Пятая строка',
      'Шестая строка',
      'Седьмая строка',
      'Восьмая строка',
      'Девятая строка',
      'Десятая строка',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Простой список'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

