import 'package:flutter/material.dart';

class EKemenkeuCard extends StatelessWidget {
  final Widget child;

  const EKemenkeuCard({Key key, this.child}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    );
  }
}
