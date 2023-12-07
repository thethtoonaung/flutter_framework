import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_framework_all_contain/Screen/RushLearning/dart/dart_home_page.dart';

class RushLearnNavBarScreen extends StatelessWidget {
  const RushLearnNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              "RushLearn    ",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 12, 19, 97)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DartHomePage())),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade200,
                      borderRadius: BorderRadius.circular(8)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "  Dart",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(8)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Flutter Framework",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(8)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Firebase",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(8)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Offline Database",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: BorderRadius.circular(8)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Apple Store & Play Store",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class RushLearnNavBarScreen extends StatelessWidget {
//   RushLearnNavBarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Center(
//             child: Text(
//               "RushLearn    ",
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           backgroundColor: Color.fromARGB(255, 12, 19, 97)),
//       body: Container(
//         child: ListView.builder(
//           itemBuilder: (BuildContext context, int index) => InkWell(
//             onTap: () {
//               var zz = EntryItem(data[index]);
//               print("OKPARee${zz.entry.title}");
//             },
//             child: Container(
//                 decoration: BoxDecoration(color: Colors.grey.shade300),
//                 child: EntryItem(data[index])),
//           ),
//           itemCount: data.length,
//         ),
//       ),
//     );
//   }
// }

// // One entry in the multilevel list displayed by this app.
// class Entry {
//   const Entry(this.title, [this.children = const <Entry>[]]);
//   final String title;
//   final List<Entry> children;
// }

// // Data to display.
// const List<Entry> data = <Entry>[
//   Entry(
//     'Chapter A',
//     <Entry>[
//       Entry('Section A0'),
//       Entry('Section A1'),
//     ],
//   ),
//   Entry(
//     'Chapter B',
//     <Entry>[
//       Entry('Section B0'),
//       Entry('Section B1'),
//     ],
//   ),
// ];

// // Displays one Entry. If the entry has children then it's displayed
// // with an ExpansionTile.
// class EntryItem extends StatelessWidget {
//   const EntryItem(this.entry);

//   final Entry entry;

//   Widget _buildTiles(Entry root) {
//     if (root.children.isEmpty)
//       return Container(
//           decoration: BoxDecoration(color: Colors.white),
//           child: ListTile(title: Text(root.title)));
//     return ExpansionTile(
//       key: PageStorageKey<Entry>(root),
//       title: Text(root.title),
//       children: root.children.map(_buildTiles).toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildTiles(entry);
//   }
// }
