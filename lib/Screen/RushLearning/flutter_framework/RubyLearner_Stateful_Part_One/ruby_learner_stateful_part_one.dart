import 'package:flutter/material.dart';
import 'package:flutter_framework_all_contain/Screen/RushLearning/flutter_framework/RubyLearner_Stateful_Part_One/ruby_learner_stateful_part_one_second.dart';

class RubyLearnerStatefulPartOne extends StatefulWidget {
  const RubyLearnerStatefulPartOne({super.key});

  @override
  State<RubyLearnerStatefulPartOne> createState() =>
      _RubyLearnerStatefulPartOneState();
}

class _RubyLearnerStatefulPartOneState
    extends State<RubyLearnerStatefulPartOne> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle application'),
        actions: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: const Text('Change Parent Widget Data'))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to home screen'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => Home(number: number)));
          },
        ),
      ),
    );
  }
}



// class Home extends StatefulWidget {
//    const Home({super.key, required this.number});
//   final int number;

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int number = 0;
//   final TextEditingController _textEditingController = TextEditingController();
//   @override
//   void initState() {
//     super.initState();
//     debugPrint('init state is called');
//   }
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     debugPrint('did change dependency is called');
//   }
//   @override
//   Widget build(BuildContext context) {
//     debugPrint('build method is called');
//     return Scaffold(
//       body: Column(
//       RubyLearnerStatefulPartOneAxisAlignment: RubyLearnerStatefulPartOneAxisAlignment.center,
//       children: [
//         Text('Data from parent ${widget.number}'),
//         const Divider(),
//         Text('Data from This widget $number'),
//         const Divider(),
//         ElevatedButton(onPressed: (){
//           setState(() {
//             number ++;
//           });
//         }, child: const Text('Change Data')),
//          TextField(
//           controller: _textEditingController,
//         ),
//       ],
//     ),
//     );
//   }
//   @override
//   void didUpdateWidget(covariant Home oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     debugPrint('did update widget is called');
//     debugPrint('old data is ${oldWidget.number} new data is ${widget.number}');
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     debugPrint('dispose widget is called');
//   }

