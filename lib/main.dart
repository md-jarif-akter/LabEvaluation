import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAD Evaluation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark(),
      ),
      home: const MyHomePage(title: 'Drive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> items = [
    {'name': 'AR/VR & Development', 'date': 'Modified Sep 4, 2024', 'icon': Icons.folder, 'color': Colors.grey},
    {'name': 'Colab Notebooks', 'date': 'Modified Nov 4, 2023', 'icon': Icons.folder, 'color': Colors.orange},
    {'name': 'CSE – Lec.', 'date': 'Modified Sep 7, 2024', 'icon': Icons.folder, 'color': Colors.green},
    {'name': 'Development', 'date': 'Modified Dec 25, 2024', 'icon': Icons.folder, 'color': Colors.orange},
    {'name': 'FYDP', 'date': 'Modified Sep 11, 2024', 'icon': Icons.folder, 'color': Colors.grey},
    {'name': 'Research', 'date': 'Modified Jul 20, 2023', 'icon': Icons.folder, 'color': Colors.cyan},
    {'name': 'TA', 'date': 'Modified Feb 23, 2024', 'icon': Icons.folder, 'color': Colors.green},
    {'name': 'Zion', 'date': 'Modified May 6, 2023', 'icon': Icons.folder, 'color': Colors.red},
    {'name': 'Git.pptx', 'date': 'Modified Mar 24', 'icon': Icons.slideshow, 'color': Colors.deepOrange},
  ];

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Search in Drive'),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage(''),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final file = items[index];
          return ListTile(
            leading: Icon(file['icon'], color: file['color']),
            title: Text(file['name'], style: const TextStyle(color: Colors.white)),
            subtitle: Text(file['date'], style: const TextStyle(color: Colors.grey)),
            trailing: const Icon(Icons.more_vert, color: Colors.white),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "camera",
            mini: true,
            backgroundColor: Colors.purple.shade100,
            child: const Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "add",
            backgroundColor: Colors.grey[800],
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
