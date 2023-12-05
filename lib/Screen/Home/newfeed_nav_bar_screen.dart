import 'package:flutter/material.dart';

class NewFeedNavBarScreen extends StatelessWidget {
  NewFeedNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              "NewFeed    ",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 12, 19, 97)),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {
              print("OKPAR${EntryItem(data[index])}");
            },
            child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: EntryItem(data[index])),
          ),
          itemCount: data.length,
        ),
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    <Entry>[
      Entry('Section A0'),
      Entry('Section A1'),
    ],
  ),
  Entry(
    'Chapter B',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListTile(title: Text(root.title)));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
