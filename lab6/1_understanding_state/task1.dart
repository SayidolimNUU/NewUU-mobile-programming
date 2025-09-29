import 'package:flutter/material.dart';

void main() => runApp(StaticProfileCard());

// Ephemeral / UI state is NOT needed here. StatelessWidget is perfect.
class StaticProfileCard extends StatelessWidget {
  const StaticProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text('John Doe'),
        subtitle: Text('john.doe@email.com'),
      ),
    );
  }
}

// This widget's state MIGHT change later, so we use StatefulWidget.
class InteractiveProfileCard extends StatefulWidget {
  const InteractiveProfileCard({super.key});

  @override
  State<InteractiveProfileCard> createState() => _InteractiveProfileCardState();
}

class _InteractiveProfileCardState extends State<InteractiveProfileCard> {
  // State variables would go here.

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text('Jane Smith'),
        subtitle: Text('jane.smith@email.com'),
      ),
    );
  }
}