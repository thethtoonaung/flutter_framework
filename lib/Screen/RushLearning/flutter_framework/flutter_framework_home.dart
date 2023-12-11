import 'package:flutter/material.dart';
import 'package:flutter_framework_all_contain/Screen/RushLearning/flutter_framework/RubyLearner_Stateful_Part_One/ruby_learner_stateful_part_one.dart';

class FlutterFrameworkHome extends StatefulWidget {
  const FlutterFrameworkHome({super.key});

  @override
  State<FlutterFrameworkHome> createState() => _FlutterFrameworkHomeState();
}

class _FlutterFrameworkHomeState extends State<FlutterFrameworkHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter Framework Home   ")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            RubyLearnerStatefulPartOne())),
                child: Container(child: Text("Ruby Learner Stateful Part-1")))
          ],
        ),
      ),
    );
  }
}
