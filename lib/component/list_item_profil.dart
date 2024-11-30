import 'package:flutter/material.dart';

class ListItemProfil extends StatelessWidget {
  final String label;
  GestureTapCallback? onTap;

   ListItemProfil({
    super.key, required this.label, required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: ListTile(

        focusColor: Colors.blue,
        hoverColor: Colors.blue,
        title: Text(label, style: TextStyle(color: Colors.white)),

        // title: Text(label),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,

      ),
    );
  }
}
