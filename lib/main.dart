import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Lesson',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dart Lesson'),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final String key = data.keys.elementAt(index);
              final Lesson lesson = data[key]!;
              return ListTile(
                title: Text(lesson.title),
                subtitle: Text(lesson.description),
              );
            },
          ),
        ));
  }
}

class Lesson {
  final String title;
  final String description;
  final String? code;

  const Lesson({
    required this.title,
    required this.description,
    this.code,
  });
}

const Map<String, Lesson> data = {
  '1': Lesson(
    title: 'important function',
    description: 'Կարեվոր ֆունկցիաներ սկսելու համար',
    code: '''
void main() {
  print('Hello, World!');
}
''',
  ),
  '2': Lesson(
    title: 'variables',
    description: 'Փոփոխականներ',
    code: '''
void main() {
  String name = 'John';
  int age = 25;
  double height = 1.75;
  bool isStudent = true;
  print('Name: \$name, Age: \$age, Height: \$height, Is Student: \$isStudent');
}
''',
  ),
};
