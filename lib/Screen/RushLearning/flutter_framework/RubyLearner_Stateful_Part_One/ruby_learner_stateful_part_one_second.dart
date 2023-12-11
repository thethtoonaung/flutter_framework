import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.number});
  final int number;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;
  final TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    debugPrint('init state is called');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('did change dependency is called');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build method is called');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Data from parent ${widget.number}'),
          const Divider(),
          Text('Data from This widget $number'),
          const Divider(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: const Text('Change Data')),
          TextField(
            controller: _textEditingController,
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('did update widget is called');
    debugPrint('old data is ${oldWidget.number} new data is ${widget.number}');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('dispose widget is called');
  }
}
