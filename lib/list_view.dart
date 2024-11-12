import 'package:flutter/material.dart';

class ListViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(20, (index) {
        return ListTile(
          leading: Icon(Icons.label),
          title: Text('Item ${index + 1}'),
          onTap: () {
            // Show a simple message when tapping an item
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Tapped on Item ${index + 1}')),
            );
          },
        );
      }),
    );
  }
}
