import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNoteView()),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 223, 167, 45),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                "Flutter tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Text(
                "build your carrier with tharwat samy",
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "may23,2023",
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
