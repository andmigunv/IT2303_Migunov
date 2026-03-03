import 'package:flutter/material.dart';
import 'package:lab3/simple_list.dart';
import 'package:lab3/infinity_list.dart';
import 'package:lab3/infinity_math_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторная работа 3',
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Списки'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Простой список'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const SimpleList(),
                ),
              );
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Бесконечный список строк'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const InfinityList(),
                ),
              );
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Бесконечный список 2^n'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const InfinityMathList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

