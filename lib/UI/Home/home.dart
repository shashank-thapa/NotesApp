import 'package:flutter/material.dart';
import 'package:noteapp/classes/notes.dart';
import 'package:noteapp/models/global.dart';
import 'package:noteapp/models/widgets/home_note_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Notes> noteList = [];
  @override
  Widget build(BuildContext context) {
    noteList = getList();
    return Container(
      
      color: Colors.white,
      child: _buildReorderableListSimple(context),
    );
  }

  Widget _buildListTile(BuildContext context, Notes item) {
    return ListTile(
      key: Key(item.noteId),
      title: HomeNotes(title: item.title),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ReorderableListView(
        padding: EdgeInsets.only(top: 250.0),
        children: noteList
            .map((Notes item) => _buildListTile(context, item))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            Notes item = noteList[oldIndex];
            noteList.remove(item);
            noteList.insert(newIndex, item);
          });
        },
      ),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Notes item = noteList.removeAt(oldIndex);
      noteList.insert(newIndex, item);
    });
  }

  List<Notes> getList() {
    for (int i = 0; i < 10; i++) {
      noteList.add(Notes("My first Note " + i.toString(),
          "This is the subtext " + i.toString(), i.toString()));
    }
    return noteList;
  }
}
